//
//  ViewController.swift
//  TrafficLightHomework
//
//  Created by sindija.dzintare on 19/08/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var redLightActive = false
    var yellowLightActive = false
    var greenLightActive = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View did load")
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 20
        
    }

    @IBAction func trafficLightSwitched(_ sender: Any) {
        if redLightActive{
            //print("Red light")
            self.redLightActive = false
            self.yellowLight.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
            self.greenLight.backgroundColor = UIColor.gray
            
            self.startButton.setTitle("Start", for: .normal)
           
     /*   }else if yellowLightActive{
            print("Yellow light")
            self.yellowLightActive = false
            self.startButton.setTitle("Next", for: .normal)
            self.redLight.backgroundColor = UIColor.gray
            self.greenLight.backgroundColor = UIColor.gray
        }else if greenLightActive {
            print("Green light")
            self.greenLightActive = false
            self.startButton.setTitle("Next", for: .normal)
            self.redLight.backgroundColor = UIColor.gray
            self.yellowLight.backgroundColor = UIColor.gray */
        }else{
            self.yellowLight.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    }
        
}

}
