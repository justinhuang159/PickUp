//
//  MapViewController.swift
//  PickUp
//
//  Created by Stanley Zeng on 4/15/20.
//  Copyright © 2020 Stanley Zeng. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case.authorizedWhenInUse:
            break
        case.denied:
            // show an alert
            break
        case.notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case.restricted:
            //show an alert
            break
        case.authorizedAlways:
            break
        @unknown default:
            // do something
            break
        }
    }
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            setupLocationManager()
            checkLocationAuthorization()
        } else {
            //alert user to turn on location
        }
    }

}

extension MapViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // come back
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        // come back
    }
}
