//
//  ViewController.swift
//  Calculadora
//
//  Created by Esteban Torres Alarcon on 6/6/16.
//  Copyright © 2016 CeroUno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    var result:Float = 0
    
    var actualNum:Float = 0
    
    var actualOp:String = "="
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = "\(result)"
    }

    @IBAction func num(sender: UIButton) {
        actualNum = actualNum * 10 + Float(Int(sender.titleLabel!.text!)!)
        
        labelResult.text = "\(actualNum)"

    }
    
    
    @IBAction func op(sender: UIButton) {
        switch actualOp {
        case "=":
            result = actualNum
        case "+":
            result = result + actualNum
        case "-":
            result = result - actualNum
        case "*":
            result = result * actualNum
        case "/":
            result = result / actualNum
        default:
            print("error")
            
        }
        actualNum = 0
        labelResult.text = "\(result)"
        
        if(sender.titleLabel!.text == "=") {
            result = 0
        }
            actualOp = sender.titleLabel!.text! as String!
        }
    
    @IBAction func clear(sender: UIButton) {
        result = 0
        actualNum = 0
        actualOp = "="
        labelResult.text = "\(result)"
        
    }
    
    
    
}

