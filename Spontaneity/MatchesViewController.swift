//
//  MatchesViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit

class MatchesViewController: BaseViewController {
 
  @IBOutlet weak var matchesTableView: UITableView!
  
  //Temp Files
  var matchImages = [UIImage(named: "FemaleProfile"), UIImage(named: "FemaleProfile2")]
  var matchNames = ["Selina Gomez", "Taylor Swift"]
  
  var matchName: String?
  var matchImage: UIImage?
  
  let segueIdentifier = "matchToMessageSegue"
  let reuseIdentifier = "matchesCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setNavBar()
  }
}


extension MatchesViewController : UITableViewDataSource {
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return matchImages.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = matchesTableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! matchesCell
    
    cell.matchImageView.image = matchImages[indexPath.row]
    cell.matchName.text = matchNames[indexPath.row]
    
    return cell
  }
}

extension MatchesViewController : UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    if let mImage = matchImages[indexPath.row] {
      self.matchImage = mImage
    }
    self.matchName = matchNames[indexPath.row]

    performSegue(withIdentifier: segueIdentifier , sender: indexPath)
  }
}

extension MatchesViewController {
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    let messagesVC = segue.destination as! MessagesViewController
    
    messagesVC.matchImage = self.matchImage
    messagesVC.matchName = self.matchName
  
  }
}
