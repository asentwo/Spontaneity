//
//  RegistrationViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit

class RegistrationViewController: BaseViewController {
  
  
  @IBOutlet weak var forgetPasswordButton: UIButton!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    
    forgetPasswordButton.titleLabel?.minimumScaleFactor = 0.5
    forgetPasswordButton.titleLabel?.numberOfLines = 1
    forgetPasswordButton.titleLabel?.adjustsFontSizeToFitWidth = true

  }
  

  
  
}
