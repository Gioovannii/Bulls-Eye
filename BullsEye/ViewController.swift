//
//  ViewController.swift
//  BullsEye
//
//  Created by Giovanni Gaffé on 2020/11/4.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueSlider: UILabel!
    @IBOutlet weak var horizontalSliderValue: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        horizontalSliderValue.value = 50.0
        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello, World", message: "This is my first app", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func sliderMoved(_ slider: UISlider) {
        var currentValue = 0.0
        currentValue = Double(slider.value.rounded())
        
        print("The value of the slider is now: \(currentValue)")
        
        valueSlider.text = "\(currentValue)"
    }
}

