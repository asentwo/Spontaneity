//
//  Universal.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/11/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit


extension UIImageView {
  
  func setRounded() {
    self.layer.cornerRadius = (self.frame.width / 2)
    self.layer.masksToBounds = true
  }
}

