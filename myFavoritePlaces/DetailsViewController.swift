//
//  ViewController.swift
//  myFavoritePlaces
//
//  Created by Angelica Bato on 8/1/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit
import CoreLocation

class DetailsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var teams = TeamClass()

//    var myLocations:[Location] = []
    var currentLocationOnDeck:Location!
    var currentImageInt:Int!
    var currentLocationInt:Int!
    
    //Place all your outlets here
    @IBOutlet weak var teamPicker: UIPickerView!
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var funFact: UILabel!
    
    var int = 0
    
    
    
    
    
    
    //////////
    var myLocations:[Location] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Global.team = 15
        self.teamPicker.delegate = self
        self.teamPicker.dataSource = self
        self.view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.95)

        myLocations = Location.createDefaultLocations()
////        int = Int(arc4random_uniform(UInt32(myLocations.count)))
        int = Global.team
        currentLocationInt = int
        currentLocationOnDeck = myLocations[int]
        locationNameLabel.text = currentLocationOnDeck.name
        imageView.image = UIImage(named: currentLocationOnDeck.imageNames)
        funFact.text = "Team: \(currentLocationOnDeck.team)\nLocation: \(currentLocationOnDeck.city)\nYear Opened: \(currentLocationOnDeck.date)\nSeating Capacity: \(currentLocationOnDeck.capacity)"
        teamPicker.selectRow(15, inComponent: 0, animated: true)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myLocations.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myLocations[row].team
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        DataAccess.setData(row)
//        print(sharedDataAccess.team)
//        int = sharedDataAccess.team
        Global.team = row;
        int = Global.team
        
        currentLocationInt = int
        currentLocationOnDeck = myLocations[int]
        locationNameLabel.text = currentLocationOnDeck.name
        imageView.image = UIImage(named: currentLocationOnDeck.imageNames)
        funFact.text = "Team: \(currentLocationOnDeck.team)\nLocation: \(currentLocationOnDeck.city)\nYear Opened: \(currentLocationOnDeck.date)\nSeating Capacity: \(currentLocationOnDeck.capacity)"
        MapViewController().reload()

        
    }
    
    // Connect your buttons below
    @IBAction func changeImage(sender: AnyObject) {
    }
    @IBAction func changeLocation(sender: AnyObject) {
        
        let myLocations:[Location] = Location.createDefaultLocations()
        let int = Int(arc4random_uniform(UInt32(myLocations.count)))
        currentLocationInt = int
        currentLocationOnDeck = myLocations[int]
        locationNameLabel.text = currentLocationOnDeck.name
        imageView.image = UIImage(named: currentLocationOnDeck.imageNames)
        funFact.text = "Team: \(currentLocationOnDeck.team)\nLocation: \(currentLocationOnDeck.city)\nYear Opened: \(currentLocationOnDeck.date)\nSeating Capacity: \(currentLocationOnDeck.capacity)"
    }
    
    


}
