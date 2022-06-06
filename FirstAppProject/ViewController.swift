//
//  ViewController.swift
//  FirstAppProject
//
//  Created by Валик Кабанченко on 06.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var coloredView: UIView!
    
    let defoltImageViewColor =  UIColor.brown
    

    @IBAction func redView(_ sender: Any) {
        coloredView.backgroundColor = UIColor.red
    }
    
    @IBAction func greenView(_ sender: Any) {
        coloredView.backgroundColor = UIColor.green
    }
    
    @IBAction func blueView(_ sender: Any) {
        coloredView.backgroundColor = UIColor.blue
    }
    
    @IBAction func resetView(_ sender: Any) {
        coloredView.backgroundColor = defoltImageViewColor
    }
    
   
    
    @IBAction func showImageStateChange(_ sender: UISwitch) {
      
        imageView.isHidden = !sender.isOn
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        updateSliderValue()
    }
    func updateSliderValue() {
        sliderValueLabel.text = "\(Int(slider.value))"
    }
    
    @IBAction func submitButton(_ sender: Any) {
        
        nameLabel.text = "Sava"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 100
        slider.maximumValue = 500
    slider.value = (slider.maximumValue - slider.minimumValue) / 2 +
         slider.minimumValue
        updateSliderValue()
        
        nameLabel.text = " "
        coloredView.backgroundColor = defoltImageViewColor
    }


}

