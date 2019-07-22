//
//  ViewController.swift
//  xyz-machines
//
//  Created by Islam Swira on 7/22/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
        }
    
    func updateLabels(data:CMAccelerometerData?, error:Error?){
        guard let acclemeratotData = data else {return}
        
        let formmater = NumberFormatter()
        formmater.minimumFractionDigits = 1
        formmater.maximumFractionDigits = 2
        
        let x = formmater.string(for: acclemeratotData.acceleration.x)!
        let y = formmater.string(for: acclemeratotData.acceleration.y)!
        let z = formmater.string(for: acclemeratotData.acceleration.z)!
        
        xLabel.text = "X: \(x)"
        yLabel.text = "Y: \(y)"
        zLabel.text = "Z: \(z)"
        
        
        
    }
    
}
    





