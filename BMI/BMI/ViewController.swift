//
//  ViewController.swift
//  BMI
//
//  Created by mac on 25.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boyLabel: UILabel!
    @IBOutlet weak var kiloLabel: UILabel!
    @IBOutlet weak var boySlider: UISlider!
    @IBOutlet weak var kiloSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func boySlider(_ sender: UISlider) {
        let boy = (String(format: " %.2f ", sender.value))
        //slider hareket ettirilirken ölçü birimi sabit kalır.//
        boyLabel.text = "\(boy)m"
        
       
    }
    @IBAction func kiloSlider(_ sender: UISlider) {
        let kilo = (String(format:" %. 0f",sender.value))
        //slider hareket ettirilirken ölçü birimi sabit kalır.//
        kiloLabel.text = "\(kilo)kg"
    }
    
    @IBAction func hesaplaButonu(_ sender: UIButton) {
        
        let boy = boySlider.value
        let kilo = kiloSlider.value
      
        
        let vki = kilo / pow (boy, 2)
        print (vki)
        
        //let secondVC = SecondViewController()
        
        //self.present(secondVC, animated: true, completion: nil)
        
        
    }
}


