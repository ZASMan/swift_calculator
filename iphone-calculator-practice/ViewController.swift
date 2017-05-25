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
    var currentOperation = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if performingMath == true
        {
            // Set equal to button user just clicked
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            // In process of typing in a new number
            performingMath = false
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
                label.text = "/";
            
            }
            else if sender.tag == 13 // multiply
            {
                label.text = "x";
            }
            else if sender.tag == 14 // subtract
            {
                label.text = "-";
            }
            else if sender.tag == 15 // add
            {
                label.text = "+";
            }
            
            currentOperation = sender.tag;
            performingMath = true;
        }
        else if sender.tag == 16
        {
            if currentOperation == 12
            {
                
            }
            else if currentOperation == 13
            {
                
            }
            else if currentOperation == 14
            {
                
            }
            else if currentOperation == 15
            {
                
            }
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

