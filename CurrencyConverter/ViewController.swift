//
//  ViewController.swift
//  CurrencyConverterNoTables
//
//  Created by Joshua Zhu on 7/4/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var USDLabel: UILabel!
    @IBOutlet weak var YuanLabel: UILabel!
    @IBOutlet weak var BitcoinLabel: UILabel!
    
    func buttonPress(command: String) {
        
        var currentUSDText: String
        if let currentUSDText2 = USDLabel.text{
            currentUSDText = currentUSDText2
        }
        else {
            currentUSDText = ""
        }
        
        if currentUSDText == "0" {
            currentUSDText = ""
        }
        switch command {
        case ".":
            if currentUSDText.range(of:".") == nil {
                if currentUSDText == "" {
                    currentUSDText = "0."
                }
                else {
                    currentUSDText += "."
                }
            }
        
        case "C":
            self.USDLabel.text = ""
            self.YuanLabel.text = ""
            self.BitcoinLabel.text = ""
            return

        default:
            currentUSDText += command
        }
        
        USDLabel.text = currentUSDText
        var USDValue: Double
        if let USDValue2 = Double(currentUSDText) {
            USDValue = USDValue2
        }
        else {
            USDValue = Double(currentUSDText.prefix(currentUSDText.count-1))!
        }
        YuanLabel.text = String(USDValue * 6.63)
        BitcoinLabel.text = String(USDValue * 0.00015)
        
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        buttonPress(command: "1")
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        buttonPress(command: "2")
    }
    @IBAction func button3Pressed(_ sender: UIButton) {
        buttonPress(command: "3")
    }
    @IBAction func button4Pressed(_ sender: UIButton) {
        buttonPress(command: "4")
    }
    @IBAction func button5Pressed(_ sender: UIButton) {
        buttonPress(command: "5")
    }
    @IBAction func button6Pressed(_ sender: UIButton) {
        buttonPress(command: "6")
    }
    @IBAction func button7Pressed(_ sender: UIButton) {
        buttonPress(command: "7")
    }
    @IBAction func button8Pressed(_ sender: UIButton) {
        buttonPress(command: "8")
    }
    @IBAction func button9Pressed(_ sender: UIButton) {
        buttonPress(command: "9")
    }
    @IBAction func buttonPeriodPressed(_ sender: UIButton) {
        buttonPress(command: ".")
    }
    @IBAction func button0Pressed(_ sender: UIButton) {
        buttonPress(command: "0")
    }
    @IBAction func buttonCPressed(_ sender: UIButton) {
        buttonPress(command: "C")
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

