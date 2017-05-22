//
//  LoginViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation

import UIKit

class LoginViewController: BaseViewController {
  
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    setNavBar()
    
    emailTextField.attributedPlaceholder = placeHolder("email")
    passwordTextField.attributedPlaceholder = placeHolder("password")
  }
  
  
}
