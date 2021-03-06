//
//  RestaurantViewController.swift
//  Spontaneity
//
//  Created by Justin Doo on 5/1/17.
//  Copyright © 2017 JustinDoo. All rights reserved.
//

import Foundation
import UIKit

class RestaurantViewController: BaseViewController {
  
  @IBOutlet weak var restaurantTableView: UITableView!
  
  
  var restaurants = ["Truckyard", "EasySlider", "Revolver", "Armoury"]
  
  var currentRestaurant: String!
  
  
  let reuseIdentifier = "restaurantCell"
  let segueIdentifier = "restaurantToMatchesSegue"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setNavBar()
  }
}


extension RestaurantViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return restaurants.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = restaurantTableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! restaurantCell
    
      cell.restaurantImageView.image = UIImage(named:restaurants[indexPath.row])
      cell.restaurantNameLabel.text = restaurants[indexPath.row]
    
    
    return cell
  }
}



extension RestaurantViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   
    currentRestaurant = self.restaurants[indexPath.row]
    
    performSegue(withIdentifier: segueIdentifier, sender: self)
  }
}


extension RestaurantViewController {
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
    let meetMeVC = segue.destination as! MeetMeViewController
    
     meetMeVC.restaurantName = self.currentRestaurant
     meetMeVC.restaurantImage = UIImage(named: self.currentRestaurant)
  }
}

