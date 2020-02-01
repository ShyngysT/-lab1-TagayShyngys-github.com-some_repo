//
//  ViewController.swift
//  Calculator
//
//  Created by Tagay Shyngys on 01.02.2020.
//  Copyright © 2020 Tagay Shyngys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numFromScr:Double = 0;
    var firstNum:Double = 0;
     var operat:Int = 0;
    var mathSign:Bool = false;
    @IBOutlet weak var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
             result.text = String(sender.tag)
            mathSign = false;
        }
        
            
        else {
        result.text = result.text! + String(sender.tag)
        }
 
       
       
    numFromScr = Double(result.text!)!
        
    }
  
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15   {
            firstNum = Double(result.text!)!
            if sender.tag == 11 {
                
                result.text = "/";
            }
           
            else if sender.tag == 12 {
                
                result.text = "*";
            }
            else if sender.tag == 13 {
            
                result.text = "-";
                
            }
            else if sender.tag == 14 {
                result.text = "+";
                
            }
            else if sender.tag == 15 {
                
                result.text = "=";
            }
            operat = sender.tag;
            mathSign = true;
        }
        
            
        else if sender.tag == 15 {
            if operat == 11 {
               result.text = String(firstNum / numFromScr)
            }
            else if operat == 12 {
                result.text = String(firstNum * numFromScr)
            }
            else if operat == 13 {
                result.text = String(firstNum - numFromScr)
            }
            else if operat == 14 {
                result.text = String(firstNum + numFromScr)
            }
        }
       
        else if sender.tag == 10 {
            result.text = "";
        }
        else if sender.tag == 16 {
            result.text = String( 0 - numFromScr)
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

