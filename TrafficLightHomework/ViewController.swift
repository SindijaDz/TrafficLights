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
    
    var redLightActive = true
    var yellowLightActive = true
    var greenLightActive = true
    
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
            print("Red light")
            self.redLightActive = false
            self.redLight.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            self.yellowLight.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.55)
            self.greenLight.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 0.55)
            self.startButton.setTitle("Next", for: .normal)
            
        }else if yellowLightActive{
            print("Yellow light")
            self.yellowLightActive = false
            self.startButton.setTitle("Next", for: .normal)
            self.redLight.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.55)
            self.greenLight.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 0.55)
            self.yellowLight.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            
        }else if greenLightActive{
            print("Green light")
            self.greenLightActive = false
            self.redLight.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.5561857877)
            self.yellowLight.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.550593964)
            self.greenLight.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            self.startButton.setTitle("Next", for: .normal)
            
        }else{
            print ("Return to start")
            self.redLightActive = true
            self.yellowLightActive = true
            self.greenLightActive = true
            self.redLight.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.5561857877)
            self.yellowLight.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.550593964)
            self.greenLight.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 0.55)
            self.startButton.setTitle("Repeat", for: .normal)
            
        }
        
    }
    
}

