//
//  ViewController.swift
//  FakeGPS
//
//  Created by Maciej Gad on 19.06.2017.
//  Copyright © 2017 Maciej Gad. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        map.showsUserLocation = true
        locationManager.requestWhenInUseAuthorization()
    }

    @IBAction func toCurrentLocation(_ sender: Any) {
        guard let loc = locationManager.location else {
            return
        }
        map.setCenter(loc.coordinate, animated: true)
    }


}

