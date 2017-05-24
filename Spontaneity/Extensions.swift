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


open class UIInsetLabel: UILabel {
  
  open var insets : UIEdgeInsets = UIEdgeInsets() {
    didSet {
      super.invalidateIntrinsicContentSize()
    }
  }
  
  open override var intrinsicContentSize: CGSize {
    var size = super.intrinsicContentSize
    size.width += insets.left + insets.right
    size.height += insets.top + insets.bottom
    return size
  }
  
  override open func drawText(in rect: CGRect) {
    return super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
  }
}
