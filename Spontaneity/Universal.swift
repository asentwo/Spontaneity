//
//  Universal.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/11/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit



let attributes = [
  NSForegroundColorAttributeName: UIColor.white,
  NSFontAttributeName : UIFont(name: "NeutraText-Light", size: 17)!
]


func placeHolder(_ text: String) -> (NSAttributedString){
  return NSAttributedString(string: text, attributes:attributes)
}
   
