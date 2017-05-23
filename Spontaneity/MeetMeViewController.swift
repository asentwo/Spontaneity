//
//  MeetMeViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit

class MeetMeViewController: UIViewController {
  
  
  @IBOutlet weak var meMatchImageView: UIImageView!
  @IBOutlet weak var theyMatchImageView: UIImageView!
  @IBOutlet weak var placeImageView: UIImageView!
  @IBOutlet weak var placeName: UILabel!
  
  
  var restaurantImage: UIImage?
  var restaurantName: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    if let restName = self.restaurantName {
      
      placeName.text = restName
      placeImageView.image = UIImage(named: restName)
      
    }
  
    placeImageView.setRounded()
    meMatchImageView.setRounded()
    theyMatchImageView.setRounded()
  }
}
