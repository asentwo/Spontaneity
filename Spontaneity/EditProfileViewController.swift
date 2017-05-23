//
//  EditProfileViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/22/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit



class EditProfileViewController : BaseViewController {
  
  @IBOutlet weak var ageTextField: UITextField!
  @IBOutlet weak var cityTextField: UITextField!
  @IBOutlet weak var sexTextField: UITextField!
  @IBOutlet weak var interestsTextField: UITextField!
  
  @IBOutlet weak var uploadImageTextField: UITextField!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setNavBar()
    
    ageTextField.attributedPlaceholder = placeHolder("age")
    cityTextField.attributedPlaceholder = placeHolder("city")
    sexTextField.attributedPlaceholder = placeHolder("sex")
    interestsTextField.attributedPlaceholder = placeHolder("interests")
    uploadImageTextField.attributedPlaceholder = placeHolder("upload image")
    
  }
  
  
}
