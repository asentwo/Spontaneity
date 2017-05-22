//
//  SignUpViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation

import UIKit

class SignUpViewController: BaseViewController {
  
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var confirmEmailTextfield: UITextField!
  
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setNavBar()
    
    nameTextField.attributedPlaceholder = placeHolder("name")
    passwordTextField.attributedPlaceholder = placeHolder("password")
    emailTextField.attributedPlaceholder = placeHolder("email")
    confirmEmailTextfield.attributedPlaceholder = placeHolder("confirm email")
    
  }
  
  
}
