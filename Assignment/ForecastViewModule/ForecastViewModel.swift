//
//  ForecastViewModel.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import UIKit

class ForecastViewModel: NSObject {
    
    private var isDataReady: Observable<Bool>
    private var error: Observable<APIError>
    private var dataSource: [String: [Forecast]]?
    private var forecastType: ForcastType?
    private var headers: [String] = []
    
    var operationQueue: OperationQueue!
    
    init(forecastType: ForcastType?) {
        isDataReady = Observable<Bool>()
        error = Observable<APIError>()
        self.forecastType = forecastType
        super.init()
    }
    
    //MARK: Binding View with view model
    func bindSuccess(listner: @escaping Listner<Bool>) {
        self.isDataReady.bind(listner: listner)
    }
    
    func bindFailure(listner: @escaping Listner<APIError>) {
        self.error.bind(listner: listner)
    }
    
    //MARK: Methods to send request for weather report
    func sendRequestForweatherReport() {
        switch forecastType {
        case .cities(let cities):
            sendRequestForMuliple(cities: cities)
        case .curentCity:
            getLocationAndSendRequest()
        case .none:
            error.value = APIError.other
        }
    }
    
    //MARK: Methods to send request for single city with current lat long
    func sendRequestForMuliple(cities: String) {
        operationQueue = OperationQueue()
        operationQueue.qualityOfService = .background
        cities.components(separatedBy: ",").forEach({city in
            self.operationQueue.addOperation {
                self.sendWeatherReportRequest(forCity: city)
            }
        })
    }
    
    func sendWeatherReportRequest(forCity city: String) {
        let parameters = ["q": city.trimmedText]
        NetworkManager.shared.sendRequest(atPoint: APIPoint.weather, parameters: parameters) {[weak self] (response: NetworkResponse<Forecast>) in
                switch response.resultType {
                case .failure(let error):
                    self?.error.value = error
                case .success(let data):
                    self?.setDataSource(forecast: data)
                    self?.isDataReady.value = true
                }
        }
    }
    
    //MARK: Methods to send request for single city with current lat long
    func getLocationAndSendRequest() {
        LocationManager.shared.getLocation { [weak self] (location) in
            if let location = location {
                self?.sendSingleCity5DaysReportRequest(location: location)
            } else {
                self?.error.value = APIError.location
            }
        }
    }
    
    func sendSingleCity5DaysReportRequest(location: Location) {
        let parameters = ["lat": location.latitude ?? 0, "lon": location.longitude ?? 0]
        NetworkManager.shared.sendRequest(atPoint: APIPoint.forecast, parameters: parameters) {[weak self] (response: NetworkResponse<[Forecast]>) in
                switch response.resultType {
                case .failure(let error):
                    self?.error.value = error
                case .success(let dataList):
                    self?.setDateWiseData(list: dataList)
                    self?.isDataReady.value = true
                }
        }
    }
    
    //MARK: Method to update datasource
    private func setDataSource(forecast: Forecast) {
        if dataSource?[""] == nil {
            dataSource = ["": [forecast]]
        } else {
            dataSource?[""]?.append(forecast)
        }
        headers = [""]
    }
    
    func setDateWiseData(list: [Forecast]) {
        dataSource = [:]
        list.forEach({
            let date = $0.date?.changeDateFormat(fromFromat: .yyyyMMddHHMMSS, toFormat: .EEE_MMM_DD_YYYY) ?? Strings.NO_DATE_AVAILABLE
            if self.dataSource?[date] != nil {
                self.dataSource?[date]?.append($0)
            } else {
                self.dataSource?[date] = [$0]
            }
        })
        headers = dataSource!.keys.map({$0})
    }
    
    //MARK: Table View Data & delegate related Methods
    func numberOfSection() -> Int {
        return headers.count
    }
    
    func numberOfRows(inSection section: Int) -> Int {
        return dataSource?[headers[section]]?.count ?? 0
    }
    
    func item(atIndexPath indexPath: IndexPath) -> Forecast? {
        return dataSource?[headers[indexPath.section]]?[indexPath.row]
    }
    
    func headerFor(section: Int) -> String? {
        switch forecastType {
        case .curentCity:
            return headers[section]
        default:
            return nil
        }
    }
    
    func heightFor(section: Int) -> CGFloat {
        switch forecastType {
        case .curentCity:
            return 30
        default:
            return 0
        }
    }
    
    func heightForRow() -> CGFloat {
        return 100
    }
}
