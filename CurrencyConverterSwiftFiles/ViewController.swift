//
//  ViewController.swift
//  CurrencyConverterNoTables
//
//  Created by Joshua Zhu on 7/4/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var USDAmount: CurrencyTextField!
    @IBOutlet weak var YuanAmount: CurrencyTextField!
    @IBOutlet weak var BitcoinAmount: CurrencyTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        USDAmount.calculateButtonAction = {
            guard let USDText = self.USDAmount.text, let USDValue = Double(USDText) else {
                return
            }
            
            let roundedUSDValue = (100*USDValue).rounded()/100
            let roundedYuanValue = (6.63*roundedUSDValue*100).rounded()/100
            let roundedBitcoinValue = (0.00015*roundedUSDValue)
            
            self.USDAmount.text = String(roundedUSDValue)
            self.YuanAmount.text = String(roundedYuanValue)
            self.BitcoinAmount.text = String(roundedBitcoinValue)
        }
        YuanAmount.calculateButtonAction = {
            guard let YuanText = self.YuanAmount.text, let YuanValue = Double(YuanText) else {
                return
            }
            
            let roundedYuanValue = (YuanValue*100).rounded()/100
            let roundedUSDValue = (100*roundedYuanValue/6.63).rounded()/100
            let roundedBitcoinValue = (0.00015*roundedUSDValue)
            
            self.USDAmount.text = String(roundedUSDValue)
            self.YuanAmount.text = String(roundedYuanValue)
            self.BitcoinAmount.text = String(roundedBitcoinValue)
        }
        BitcoinAmount.calculateButtonAction = {
            guard let BitcoinText = self.BitcoinAmount.text, let BitcoinValue = Double(BitcoinText) else {
                return
            }
            
            let roundedBitcoinValue = BitcoinValue
            let roundedUSDValue = (100*roundedBitcoinValue/0.00015).rounded()/100
            let roundedYuanValue = (roundedUSDValue*100*6.63).rounded()/100
            
            
            
            self.USDAmount.text = String(roundedUSDValue)
            self.YuanAmount.text = String(roundedYuanValue)
            self.BitcoinAmount.text = String(roundedBitcoinValue)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

