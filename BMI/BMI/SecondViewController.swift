//
//  SecondViewController.swift
//  BMI
//
//  Created by mac on 25.02.2022.
//

import UIKit

class SecondViewController : UIViewController{
    
    var vkiValue : String?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = vkiValue
        
       
    }
   /* let label = UILabel()
    label.text = " "
    label.frame = CGRect (x: 0, y :0, width :100 , height:0)
    */
 }
