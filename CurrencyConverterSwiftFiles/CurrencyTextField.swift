//
//  Currency.swift
//  CurrencyConverterNoTables
//
//  Created by Joshua Zhu on 7/4/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {
    
    // MARK: - Properties
    
    var calculateButtonAction: (() -> Void)?
    
    // MARK: - View Lifecycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let toolbar: UIToolbar = UIToolbar()
        
        let leadingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let trailingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let calculateButton = UIBarButtonItem(title: "Calculate", style: .done, target: self, action: #selector(calculateButtonTapped(_:)))
        toolbar.items = [leadingFlex, calculateButton, trailingFlex]
        
        // resizes toolbar
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    
    @objc private func calculateButtonTapped(_ sender: UIBarButtonItem) {
        calculateButtonAction?()
    }
}
