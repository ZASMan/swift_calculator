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
        // Clicks any of the buttons except blank buttons
        // clear button or equal button
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
        // Clicks the equal button
        else if sender.tag == 16
        {
            if currentOperation == 12 //divide
            {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if currentOperation == 13 //multiply
            {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if currentOperation == 14 // subtract
            {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if currentOperation == 15 // add
            {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        // Clicks the clear button
        else if sender.tag == 11
        {
            label.text = "";
            previousNumber = 0;
            numberOnScreen = 0;
            currentOperation = 0;
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

