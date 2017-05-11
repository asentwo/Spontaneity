//
//  RegistrationViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit

class RegistrationViewController: UIViewController {
  
  
  @IBOutlet weak var signUpTextField: UITextField!
  @IBOutlet weak var logInTextField: UITextField!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
   signUpTextField.attributedPlaceholder = placeHolder("Sign Up")
    logInTextField.attributedPlaceholder = placeHolder("Log In")
  }
  

  
}
