//
//  ViewController.swift
//  iphone-calculator-practice
//
//  Created by Zane Sandin on 5/14/17.
//  Copyright © 2017 ZASman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if performingMath == true
        {
            // Set equal to button user just clicked
            label.text = String(sender.tag-1)
            // In process of typing in a new number
            performingMath = true;
        }
        else
        {
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
        }
    }
    

    @IBAction func operator_buttons(_ sender: UIButton)
    {
        if label.text! != "" && sender.tag != 11 && sender.tag != 16
        {
            //Store previous label
            previousNumber = Double(label.text!)!
            if sender.tag == 12 //divide
            {
            
            }
            else if sender.tag == 13 // multiply
            {
                
            }
            else if sender.tag == 14 // subtract
            {
                
            }
            else if sender.tag == 15 // add
            {
                
            }
            
            var performingMath = true;
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

