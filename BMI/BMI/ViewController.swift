//
//  ViewController.swift
//  BMI
//
//  Created by mac on 25.02.2022.
//

import UIKit

class ViewController: UIViewController {

    
    var vkiValue = "0.0"
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
      
        let vki = kilo / (boy * boy)
        //let vki = kilo / pow (boy, 2)
        vkiValue = String(format: "%1.f", vki)
        print (vki)
        
        let secondVC = SecondViewController()
        
        self.performSegue(withIdentifier: "homeToSecond", sender: self)
        
       // self.present(secondVC, animated: true, completion: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "homeToSecond" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.vkiValue = vkiValue
        }
    }
}


