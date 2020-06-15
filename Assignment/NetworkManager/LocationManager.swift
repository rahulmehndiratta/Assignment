//
//  LocationManager.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import UIKit
import CoreLocation

struct Location {
    var latitude: Double?
    var longitude: Double?
    var address: String?
}

typealias Coordinates = CLLocationCoordinate2D

class LocationManager: NSObject, CLLocationManagerDelegate {
    
    static let shared = {LocationManager()}()
    private var locationManager: CLLocationManager
    private var lastLocation: CLLocation?
    
    var locationChangeCallBack: ((Location?)->())?
    
    private override init() {
        locationManager = CLLocationManager()
        super.init()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.distanceFilter = 100
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.requestLocation()
        }
    }
    
    func stopLocation() {
        locationManager.stopUpdatingLocation()
        locationManager.allowsBackgroundLocationUpdates = false
    }
    
    func startSignificatLocation() {
        locationManager.startUpdatingLocation()
        locationManager.pausesLocationUpdatesAutomatically = false
    }
    
    static func isLocationEnabled() -> Bool {
        let status = CLLocationManager.authorizationStatus()
        return (status == .authorizedAlways || status == .authorizedWhenInUse) && CLLocationManager.locationServicesEnabled()
    }
    
    func getCurrentAddress(complotion: @escaping((Location?, Error?)->())) {
        guard let location = locationManager.location else {
            complotion(nil, nil)
            return
        }
        getAddress(fromCoodinates: location.coordinate, complotion: complotion)
    }
    
    func getAddress(fromCoodinates coordinates: CLLocationCoordinate2D, complotion: @escaping((Location?, Error?)->())) {
        CLGeocoder.init().reverseGeocodeLocation(CLLocation.init(latitude: coordinates.latitude, longitude: coordinates.longitude)) { (placemarks, error) in
            if error != nil {
                complotion(nil, error!)
            } else if let placemark = placemarks?.first {
                let locationObj = Location(latitude: placemark.location?.coordinate.latitude, longitude: placemark.location?.coordinate.longitude, address: placemark.formattedAddress)
                complotion(locationObj, nil)
            }
        }
    }
    
    func getCoordinatesFrom(addressString string: String, complition: @escaping((CLLocationCoordinate2D?, Error?) -> ())) {
        CLGeocoder().geocodeAddressString(string) { (placemarks, error) in
            guard let coordinates = placemarks?.first?.location?.coordinate else {
                complition(nil, error)
                return
            }
            print(string, placemarks?.first?.formattedAddress ?? "no Formated Address")
            complition(coordinates, nil)
        }
    }
    
    func getLocation(complition: ((Location?)->())?) {
        if let location = self.locationManager.location, let time = locationManager.location?.timestamp, Date().timeIntervalSince(time) <= 3*60 {
            complition?(Location(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude, address: nil))
            return
        }
        self.locationChangeCallBack = complition
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse || status == .denied || status == .notDetermined {
            locationManager.allowsBackgroundLocationUpdates = false
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationChangeCallBack?(Location(latitude: locations.last?.coordinate.latitude, longitude: locations.last?.coordinate.longitude, address: nil))
        self.locationChangeCallBack = nil
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        locationChangeCallBack?(nil)
    }
    
    //MARK: Method to get distance between 2 locations
    func getDistance(between startPoint: CLLocationCoordinate2D, and endPoint: CLLocationCoordinate2D) -> CLLocationDistance {
        let startLocation = CLLocation.init(latitude: startPoint.latitude, longitude: startPoint.longitude)
        let endLocation = CLLocation.init(latitude: endPoint.latitude, longitude: endPoint.longitude)
        return startLocation.distance(from: endLocation)/1000
    }
}

extension CLPlacemark {
    
    var formattedAddress: String {
        get {
            var addressString : String = ""
            if subLocality != nil {
                addressString = addressString + subLocality! + ", "
            }
            if thoroughfare != nil {
                addressString = addressString + thoroughfare! + ", "
            }
            if locality != nil {
                addressString = addressString + locality! + ", "
            }
            if country != nil {
                addressString = addressString + country! + ", "
            }
            if postalCode != nil {
                addressString = addressString + postalCode! + " "
            }
            return addressString
        }
    }
}
