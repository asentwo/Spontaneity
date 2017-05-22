//
//  BaseViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/19/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit






class BaseViewController: UIViewController {
  
  
  
  
  func setNavBar () {
    
    let logo = UIImage(named: "Spontaneity Logo")
    let imageView = UIImageView(image:logo)
    self.navigationItem.titleView = imageView
    
    self.navigationController!.navigationBar.tintColor = UIColor.white
  }
  
  
  
  let attributes = [
    NSForegroundColorAttributeName: UIColor.white,
    NSFontAttributeName : UIFont(name: "NeutraText-Light", size: 20)!
  ]
  
  
  func placeHolder(_ text: String) -> (NSAttributedString){
    return NSAttributedString(string: text, attributes:attributes)
  }
  
  
  
}
