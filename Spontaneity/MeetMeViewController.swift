//
//  MeetMeViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit

class MeetMeViewController: BaseViewController {
  
  
  @IBOutlet weak var meMatchImageView: UIImageView!
  @IBOutlet weak var theyMatchImageView: UIImageView!
  @IBOutlet weak var placeImageView: UIImageView!
  @IBOutlet weak var placeName: UILabel!
  
  var restaurantImage: UIImage?
  var restaurantName: String?
  
  var matchImage: UIImage!
  var matchName: String!
  
  //Temp Files
  var matchImages = [UIImage(named: "FemaleProfile"), UIImage(named: "FemaleProfile2")]
  var matchNames = ["Selina Gomez", "Taylor Swift"]
  var index = 0
  
  let segueIdentifier = "meetMeToMatchProfileSegue"
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setNavBar()
    
    if let restName = self.restaurantName {
      
      placeName.text = restName
      placeImageView.image = UIImage(named: restName)
      
    }
    
    
    matchName = matchNames[index]
    matchImage = matchImages[index]
    theyMatchImageView.image = matchImage
    
    
    placeImageView.setRounded()
    meMatchImageView.setRounded()
    theyMatchImageView.setRounded()
  }
  
  @IBAction func yesButtonPressed(_ sender: Any) {
    
    performSegue(withIdentifier: segueIdentifier, sender: self)
  }
  
  @IBAction func noButtonPressed(_ sender: Any) {
    index = (index + 1) % matchNames.count
    
    matchName = matchNames[index]
    matchImage = matchImages[index]
    theyMatchImageView.image = matchImage
  }
  
  
}

extension MeetMeViewController {
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let mProfileVC = segue.destination as! MatchProfileViewController
    
    mProfileVC.matchImage = matchImage
    mProfileVC.matchName = matchName
  }
  
  
}
