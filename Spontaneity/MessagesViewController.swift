//
//  MessagesViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit

class MessagesViewController: BaseViewController {
  
  

  @IBOutlet weak var dateImageView: UIImageView!
  @IBOutlet weak var dateNameLabel: UILabel!
  @IBOutlet weak var messageTextField: UITextField!
  
  var matchName: String?
  var matchImage: UIImage?
  
  let segueIdentifier = "messageToProfileSegue"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setNavBar()
    
    if let mImage = matchImage {
    dateImageView.image = mImage
    }
    
    if let mName = matchName {
      dateNameLabel.text = mName
    }
    
    dateImageView.setRounded()
    
    let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
    
    dateImageView.addGestureRecognizer(tap)
    
    dateImageView.isUserInteractionEnabled = true
  
  }
  
  func handleTap(sender: UITapGestureRecognizer? = nil) {
  
    performSegue(withIdentifier: segueIdentifier, sender: self)
    
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let profileVC = segue.destination as! MatchProfileViewController
    
    profileVC.matchImage = self.matchImage
    profileVC.matchName = self.matchName
  }
  
  
  @IBAction func sendButtonPressed(_ sender: Any) {
  }
  
}
