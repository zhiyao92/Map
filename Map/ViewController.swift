//
//  ViewController.swift
//  Map
//
//  Created by Kelvin on 5/16/17.
//  Copyright © 2017 Kelvin. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeLayout(_ sender: UIButton) {  sender.tag += 1
        if sender.tag > 2 {
            sender.tag = 0
        }
        switch sender.tag {
        case 1 :
            mapView.mapType = .satellite
        case 2:
            mapView.mapType = .standard
        default:
            mapView.mapType = .hybrid
        
        }
    }
}
