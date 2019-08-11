//
//  RoundButton.swift
//  Quizzz
//
//  Created by Ba Phuc Nguyen on 2019-08-10.
//  Copyright © 2019 Phuc Nguyen. All rights reserved.
//  This class to add more options for UIButton

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
