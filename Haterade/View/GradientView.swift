//
//  GradientView.swift
//  Haterade
//
//  Created by Chad Fegley on 7/27/17.
//  Copyright © 2017 Chad Fegley. All rights reserved.
//

import UIKit

@IBDesignable

class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 1, green: 0.4274509804, blue: 0, alpha: 1) {
        
        didSet {
            
            self.setNeedsLayout()
            
        }
        
    }
    
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 1, green: 0.8196078431, blue: 0.5019607843, alpha: 1) {
        
        didSet {
            
            self.setNeedsLayout()
            
        }
        
    }
    
    override func layoutSubviews() {
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
}
