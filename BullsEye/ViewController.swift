//
//  ViewController.swift
//  BullsEye
//
//  Created by MacStudent on 2019-10-28.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    var targetValue: Int = 0

    @IBOutlet weak var slider: UISlider!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        targetValue = 1 + Int(arc4random_uniform(100))
    }
    

        
        // Do any additional setup after loading the view.
    
    
 func showAlert() {
        let message =  "The value of the slider is: \(currentValue)" +
       "\nThe target value is: \(targetValue)"

        let alert = UIAlertController(title: "Hello, World",
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default,
                                   handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    func startNewRound() {
       targetValue = 1 + Int(arc4random_uniform(100))
      currentValue = 50
       slider.value = Float(currentValue)



    }}
