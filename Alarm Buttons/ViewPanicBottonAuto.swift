//
//  ViewPanicBottonAuto.swift
//  Alarm Buttons
//
//  Created by OSX I+D on 22-05-17.
//  Copyright © 2017 Jose David Bustos H. All rights reserved.
//

import UIKit
import MapKit

class ViewPanicBottonAuto: UIViewController , MKMapViewDelegate, CLLocationManagerDelegate  {
    let locationManager = CLLocationManager()  // Add this statement    
   // @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var Map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
        
       // locationManager.delegate = self;
        // 2
       // locationManager.requestAlwaysAuthorization()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    func locationManager(_ manager: CLLocationManager!, didChangeAuthorization status:CLAuthorizationStatus){
        mapView.showsUserLocation = (status == .authorizedAlways)
        
    }
    
    func locationManager(_ manager: CLLocationManager!, monitoringDidFailFor region: CLRegion!, withError error: Error) {
        //println("Monitoring failed for region with identifier: \(region.identifier)")
    }
    
    func locationManager(_ manager: CLLocationManager!, didFailWithError error: Error) {
        //println("Location Manager failed with the following error: \(error)")
    }
 */
}

