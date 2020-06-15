//
//  NetworkManager.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import Foundation
import SystemConfiguration

//NOTE: I have just made one methods because of less time and less requirements.

typealias Response<T: Parsable> = (NetworkResponse<T>) -> Void

/** This class is used to handle the Newtork API Calls */
class NetworkManager {
    
    // A Single Instance of Type NetworkManager
    static let shared = NetworkManager()
    
    // Private Initializer for Singleton Design Pattern
    private init() {
        
    }
    
    /** A Boo that tells wheter Network is Available or Not*/
    private var isNetWorkAvailable:  Bool {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        }) else {
            return false
        }
        
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }
        
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        return (isReachable && !needsConnection)
    }
    
    /**
     This method returns URL for the endpoing of Optional URL Type
     - Parameters:
        - point: Query String for the Endpoint of Type String.
        - paramter: Parameter to be post of type Dictionary with default value set to an empty dictionary.
        - method: method of Type HTTPMethods that defines the type of Network Call Like GET, POST etc
     - Returns: Returns Complete URL for the Endpoint of Optional URL Type.
     */
    private func getURL(point: String, paramter: [String: Any] = [:], method: HTTPMethods) -> URL? {
        var url = WEB_SERVICE_URL + point
        if method == .get {
            var param = paramter
            param["appid"] = API_KEY
            url += param.query
        }
        return URL(string: url)
        
    }
    
    //MARK: Request Methods
    
    /**
    This method is used to send Request to the HTTP Endpoint with the specific parameters
    - Parameters:
       - atPoint: HTTP Endpoint for the request of type APIPoint
       - method: method of Type HTTPMethods that defines the type of Network Call Like GET, POST etc
       - parameters: Parameter to be post of type Dictionary with default value set to an empty dictionary.
       - responseCallback: A Closure to receive the response from the HTTP Request
    */
    func sendRequest<T: Parsable>(atPoint point: APIPoint, method: HTTPMethods = .get, parameters: [String: Any]?, responseCallback: @escaping Response<T>) {
        guard isNetWorkAvailable else {
            responseCallback(NetworkResponse<T>(json: [:], result: .failure(.noInternet)))
            return
        }
        guard let url = getURL(point: point.rawValue, paramter: parameters ?? [:], method: method) else {
            responseCallback(NetworkResponse<T>(json: [:], result: .failure(.other)))
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        if let params = parameters, !params.isEmpty && method == .post {
            do {
                let bodyData = try JSONSerialization.data(withJSONObject: params, options: .prettyPrinted)
                request.httpBody = bodyData
            } catch {
                print(error.localizedDescription)
            }
        }
        let task = URLSession.shared.dataTask(with: request) { (data, urlResponse, error) in
            if let error = error {
                responseCallback(NetworkResponse<T>.init(json: [:], result: .failure(.requestFailure(message: error.localizedDescription))))
                return
            } else if let data = data {
                do {
                    let json = try data.parseData()
                    if String(describing: json["cod"] ?? "") != 200.description {
                        let city = parameters?["q"] as? String ?? ""
                        let message = (json["message"] as? String)?.appending(": \(city)") ?? Strings.SOMETHING_WRONG
                        responseCallback(NetworkResponse<T>.init(json: [:], result: .failure(.requestFailure(message: message))))
                        return
                    }
                    guard !json.isEmpty, let parsed: T = json.parse(parsable: T.self) else {
                        responseCallback(NetworkResponse<T>.init(json: [:], result: .failure(.requestFailure(message: APIError.other.localizedDescription))))
                        return
                    }
                    let response = NetworkResponse<T>.init(json: json, result: .success(parsed))
                    responseCallback(response)
                } catch {
                    responseCallback(NetworkResponse<T>.init(json: [:], result: .failure(.requestFailure(message: error.localizedDescription))))
                }
            } else {
                responseCallback(NetworkResponse<T>.init(json: [:], result: .failure(.requestFailure(message: APIError.other.localizedDescription))))
                return
            }
        }
        task.resume()
    }
}
