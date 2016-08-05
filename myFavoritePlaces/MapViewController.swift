//
//  MapViewController.swift
//  myFavoritePlaces
//
//  Created by Sam Devorsetz on 8/2/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController , UITabBarDelegate{
    let teams = TeamClass()
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var funFact: UILabel!
    var currentLocationOnDeck:Location!
    var myLocations:[Location] = []
    func reload(){

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.95)
        let int = Global.team
        myLocations = Location.createDefaultLocations()
        currentLocationOnDeck = myLocations[int]
        print(teams.team)
        name.text = myLocations[int].name
        funFact.text = "Team: \(currentLocationOnDeck.team)\nLocation: \(currentLocationOnDeck.city)\nYear Opened: \(currentLocationOnDeck.date)\nSeating Capacity: \(currentLocationOnDeck.capacity)"
        centerOnLocation(currentLocationOnDeck.location, mapview: mapView)
        
        // Do any additional setup after loading the view.
    }
    func handleRefresh(refreshControl: UIRefreshControl) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func centerOnLocation(location: CLLocation, mapview:MKMapView){
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, 3000, 3000)

        mapview.setRegion(coordinateRegion, animated: true)
        let annot = MKPointAnnotation()
        annot.coordinate = location.coordinate
        mapview.addAnnotation(annot)
        print(location.coordinate)
    }
    
    @IBAction func changeLocation(sender: AnyObject) {
//        let int = Int(arc4random_uniform(UInt32(myLocations.count)))
//        myLocations = Location.createDefaultLocations()
//        currentLocationOnDeck = myLocations[int]
//        
//        name.text = myLocations[int].name
//        funFact.text = "Team: \(currentLocationOnDeck.team)\nLocation: \(currentLocationOnDeck.city)\nYear Opened: \(currentLocationOnDeck.date)\nSeating Capacity: \(currentLocationOnDeck.capacity)"
//        centerOnLocation(currentLocationOnDeck.location, mapview: mapView)
    }
    @IBAction func refresh(sender: AnyObject) {
        viewDidLoad()
        print(Global.team)
    }
    
    
}
