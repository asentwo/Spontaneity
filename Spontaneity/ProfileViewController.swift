//
//  ProfileViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: BaseViewController {
  
  
  @IBOutlet weak var personName: UILabel!
  @IBOutlet weak var personCity: UILabel!
  @IBOutlet weak var personAge: UILabel!
  @IBOutlet weak var personSex: UILabel!
  @IBOutlet weak var personInterests: UILabel!
  
  @IBOutlet weak var personImageView: UIImageView!
  

  
  @IBOutlet weak var interest_1: UILabel!
  @IBOutlet weak var interest_2: UILabel!
  @IBOutlet weak var interest_3: UILabel!

  @IBOutlet weak var interest_4: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setNavBar()
    
    
    //Temp Settings
    personName.text = "Jared Leto"
    personCity.text = "Dallas"
    personAge.text = "34"
    personSex.text = "Male"
    
    personImageView.image = UIImage(named: "MaleProfile")
    
    interest_1.text = "Skydiving"
    interest_2.text = "Concerts"
    interest_3.text = "Movies"
    interest_4.text = "Camping"
    
    interest_1 = labelBorder(label: interest_1)
    interest_2 = labelBorder(label: interest_2)
    interest_3 = labelBorder(label: interest_3)
    interest_4 = labelBorder(label: interest_4)

    
    
  }
  
  
  func labelBorder (label: UILabel) -> UILabel{
    
    label.backgroundColor = UIColor(white: 1, alpha: 0.3)
    label.layer.masksToBounds = true
    label.layer.cornerRadius = 8
    label.layer.borderWidth = 1
    label.layer.borderColor = UIColor.black.cgColor
    
    return label
  }
  
  @IBAction func editButtonPressed(_ sender: Any) {
  }
  
}
