//
//  Location.swift
//  myFavoritePlaces
//
//  Created by Angelica Bato on 8/1/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit
import CoreLocation

struct Location {
    var name:String = ""
    var team:String = ""
    var city:String = ""
    var date:Int = 0
    var capacity:Int = 0
    var location:CLLocation = CLLocation(latitude: 0.0, longitude: 0.0)
    var imageNames:String = ""
    var web:String = ""
    
    init(name:String, team:String, location:CLLocation, date:Int, capacity:Int, city:String, web:String) {
        self.name = name
        self.team = team
        self.city = city
        self.date = date
        self.capacity = capacity
        self.location = location
        self.imageNames = ""
        self.web = web
    }
    
    static func createDefaultLocations() -> [Location] {
        let location1:CLLocation = CLLocation(latitude: 33.8003, longitude: -117.8827)
        var angel = Location(name: "Angel Stadium of Anaheim", team: "Los Angeles Angels of Anaheim", location: location1, date: 1966, capacity: 45483, city: "Anaheim, California", web: "https://en.wikipedia.org/wiki/Angel_Stadium")
        angel.imageNames = "angels"
        let location2:CLLocation = CLLocation(latitude: 42.3390, longitude: -83.0485)
        var tiger = Location(name: "Comerica Park", team: "Detroit Tigers", location: location2, date: 2000, capacity: 41297, city: "Detroit, Michigan", web: "https://en.wikipedia.org/wiki/Comerica_Park")
        tiger.imageNames = "detroit"
        let location3:CLLocation = CLLocation(latitude: 42.3467, longitude: -71.0972)
        var redSox = Location(name: "Fenway Park", team: "Boston Red Sox", location: location3, date: 1912, capacity: 37949, city: "Boston, Massachusetts", web: "https://en.wikipedia.org/wiki/Fenway_Park")
        redSox.imageNames = "fenway"
        let location4:CLLocation = CLLocation(latitude: 39.0517, longitude: -94.4803)
        var royal = Location(name: "Kauffman Stadium", team: "Kansas City Royals", location: location4, date: 1973, capacity: 37903, city: "Kansas City, Missouri", web: "https://en.wikipedia.org/wiki/Kauffman_Stadium")
        royal.imageNames = "royals"
        let location5:CLLocation = CLLocation(latitude: 29.7573, longitude: -95.3555)
        var astro = Location(name: "Minute Maid Park", team: "Houston Astros", location: location5, date: 2000, capacity: 41676, city: "Houston, Texas", web: "https://en.wikipedia.org/wiki/Minute_Maid_Park")
        astro.imageNames = "astros"
        let location6:CLLocation = CLLocation(latitude: 37.7516, longitude: -122.2005)
        var athlet = Location(name: "Oakland Coliseum", team: "Oakland Athletics", location: location6, date: 1966, capacity: 35067, city: "Oakland,California", web: "https://en.wikipedia.org/wiki/Oakland_Alameda_Coliseum")
        athlet.imageNames = "a's"
        let location7:CLLocation = CLLocation(latitude: 39.2841, longitude: -76.6215)
        var oriole = Location(name: "Oriole Park at Camden Yards", team: "Baltimore Orioles", location: location7, date: 1992, capacity: 45971, city: "Baltimore, Maryland", web: "https://en.wikipedia.org/wiki/Oriole_Park_at_Camden_Yards")
        oriole.imageNames = "camden"
        let location8:CLLocation = CLLocation(latitude: 41.4962, longitude: -81.6852)
        var indian = Location(name: "Progressive Field", team: "Cleveland Indians", location: location8, date: 1994, capacity: 35225, city: "Cleveland, Ohio", web: "https://en.wikipedia.org/wiki/Progressive_Field")
        indian.imageNames = "indians"
        let location9:CLLocation = CLLocation(latitude: 43.6414, longitude: -79.3894)
        var blueJay = Location(name: "Rogers Field", team: "Toronto Blue Jays", location: location9, date: 1989, capacity: 49282, city: "Toronto Canada", web: "https://en.wikipedia.org/wiki/Rogers_Centre")
        blueJay.imageNames = "jays"
        let location10:CLLocation = CLLocation(latitude: 47.5914, longitude: -122.3325)
        var mariner = Location(name: "Safeco Field", team: "Seattle Mariners", location: location10, date: 1999, capacity: 47963, city: "Seattle, Washington", web: "https://en.wikipedia.org/wiki/Safeco_Field")
        mariner.imageNames = "mariners"
        let location11:CLLocation = CLLocation(latitude: 44.9817, longitude: -93.2778)
        var twin = Location(name: "Target Field", team: "Minnesota Twins", location: location11, date: 2010, capacity: 38871, city: "Minneapolis, Minnesota", web: "https://en.wikipedia.org/wiki/Target_Field")
        twin.imageNames = "twins"
        let location12:CLLocation = CLLocation(latitude: 27.7682, longitude: -82.6534)
        var ray = Location(name: "Tropicana Field", team: "Tampa Bay Rays", location: location12, date: 1990, capacity: 31042, city: "St. Petersburg, Florida", web: "https://en.wikipedia.org/wiki/Tropicana_Field")
        ray.imageNames = "trop"
        let location13:CLLocation = CLLocation(latitude: 41.8295, longitude: -87.6344)
        var whiteSox = Location(name: "U.S. Cellular Field", team: "Chicago White Sox", location: location13, date: 1991, capacity: 40615, city: "Chicago, Illinois", web: "https://en.wikipedia.org/wiki/U.S._Cellular_Field")
        whiteSox.imageNames = "wsox"
        let location14:CLLocation = CLLocation(latitude: 32.7513, longitude: -97.0825)
        var ranger = Location(name: "Globe Life Park in Arlington", team: "Texas Rangers", location: location14, date: 1994, capacity: 48114, city: "Arlington, Texas", web: "https://en.wikipedia.org/wiki/Globe_Life_Park_in_Arlington")
        ranger.imageNames = "rangers"
        let location15:CLLocation = CLLocation(latitude: 40.8296, longitude: -73.9262)
        var yankee = Location(name: "Yankee Stadium", team: "New Tork Yankees", location: location15, date: 2009, capacity: 49642, city: "Bronx, New York", web: "https://en.wikipedia.org/wiki/Yankee_Stadium")
        yankee.imageNames = "yankee"
        let location16:CLLocation = CLLocation(latitude: 37.7786, longitude: -122.3893)
        var att = Location(name: "AT&T Ballpark", team: "San Francisco Giants", location: location16, date: 2000, capacity: 41915, city: "San Francisco, California", web: "https://en.wikipedia.org/wiki/AT%26T_Park")
        att.imageNames = "giants"
        let location17:CLLocation = CLLocation(latitude: 38.6226, longitude: -90.1928)
        var busch = Location(name: "Busch Stadium", team: "St. Louis Cardinals", location: location17, date: 2006, capacity: 43975, city: "St. Louis, Missouri", web: "https://en.wikipedia.org/wiki/Busch_Stadium")
        busch.imageNames = "cards"
        let location18:CLLocation = CLLocation(latitude: 33.4455, longitude: -112.0667)
        var chase = Location(name: "Chase Field", team: "Arizona Diamondbacks", location: location18, date: 1998, capacity: 48519, city: "Phoenix, Arizona", web: "https://en.wikipedia.org/wiki/Chase_Field")
        chase.imageNames = "dbacks"
        let location19:CLLocation = CLLocation(latitude: 40.7571, longitude: -73.8458)
        var citi = Location(name: "Citi Field", team: "New York Mets", location: location19, date: 2009, capacity: 41922, city: "Flushing, Queens, New York City", web: "https://en.wikipedia.org/wiki/Citi_Field")
        citi.imageNames = "citi"
        let location20:CLLocation = CLLocation(latitude: 39.9061, longitude: -75.1665)
        var cbp = Location(name: "Citizens Bank Park", team: "Philadelphia Phillies", location: location20, date: 2004, capacity: 43651, city: "Philadelphia, Pennsylvania", web: "https://en.wikipedia.org/wiki/Citizens_Bank_Park")
        cbp.imageNames = "phillies"
        let location21:CLLocation = CLLocation(latitude: 39.7559, longitude: -104.9942)
        var coors = Location(name: "Coors Field", team: "Colorado Rockies", location: location21, date: 1995, capacity: 50398, city: "Denver, Colorado", web: "https://en.wikipedia.org/wiki/Coors_Field")
        coors.imageNames = "rockies"
        let location22:CLLocation = CLLocation(latitude: 34.0739, longitude: -118.2400)
        var dodger = Location(name: "Dodger Stadium", team: "Los Angeles Dodgers", location: location22, date: 1962, capacity: 56000, city: "Los Angeles", web: "https://en.wikipedia.org/wiki/Dodger_Stadium")
        dodger.imageNames = "dodgers"
        let location23:CLLocation = CLLocation(latitude: 39.0979, longitude: -84.5082)
        var gabp = Location(name: "Great American Ball Park", team: "Cincinatti Reds", location: location23, date: 2003, capacity: 42319, city: "Cincinatti, Ohio", web: "https://en.wikipedia.org/wiki/Great_American_Ball_Park")
        gabp.imageNames = "reds"
        let location24:CLLocation = CLLocation(latitude: 25.7782, longitude: -80.2205)
        var marlins = Location(name: "Marlins Park", team: "Miami Marlins", location: location24, date: 2012, capacity: 36742, city: "Miami, Florida", web: "https://en.wikipedia.org/wiki/Marlins_Park")
        marlins.imageNames = "marlins"
        let location25:CLLocation = CLLocation(latitude: 43.0280, longitude: -87.9712)
        var miller = Location(name: "Miller Park", team: "Milwaukee Brewers", location: location25, date: 2001, capacity: 41900, city: "Milwaukee, Wisconsin",web: "https://en.wikipedia.org/wiki/Miller_Park_(Milwaukee)")
        miller.imageNames = "brewers"
        let location26:CLLocation = CLLocation(latitude: 38.8730, longitude: -77.0074)
        var nats = Location(name: "Nationals Park", team: "Washington Nationals", location: location26, date: 2008, capacity: 41313, city: "Washington, District of Columbia", web: "https://en.wikipedia.org/wiki/Nationals_Park")
        nats.imageNames = "nats"
        let location27:CLLocation = CLLocation(latitude: 32.7076, longitude: -117.1571)
        var petco = Location(name: "Petco Park", team: "San Diego Padres", location: location27, date: 2004, capacity: 40162, city: "San Diego, California", web: "https://en.wikipedia.org/wiki/Petco_Park")
        petco.imageNames = "padres"
        let location28:CLLocation = CLLocation(latitude: 40.4469, longitude: -80.0057)
        var pnc = Location(name: "PNC Park", team: "Pittsburgh Pirates", location: location28, date: 2001, capacity: 38362, city: "Pittsburgh, Pennsylvania", web: "https://en.wikipedia.org/wiki/PNC_Park")
        pnc.imageNames = "pnc"
        let location29:CLLocation = CLLocation(latitude: 33.7348, longitude: -84.3900)
        var turner = Location(name: "Turner Field", team: "Atlanta Braves", location: location29, date: 1996, capacity: 49586, city: "Atlanta, Georgia", web: "https://en.wikipedia.org/wiki/Turner_Field")
        turner.imageNames = "braves"
        let location30:CLLocation = CLLocation(latitude: 41.9484, longitude: -87.6553)
        var wrigley = Location(name: "Wrigley Field", team: "Chicago Cubs", location: location30, date: 1914, capacity: 41268, city: "Chicago, Illinois", web: "https://en.wikipedia.org/wiki/Wrigley_Field")
        wrigley.imageNames = "wrigley"
        return[twin, mariner, oriole, indian, blueJay, whiteSox, ray, tiger, astro, athlet, yankee, ranger, angel, redSox, royal, att, busch, chase, citi, cbp, coors, dodger, gabp, marlins, miller, nats, petco, pnc, turner, wrigley]
    }

}
//class DataAccess {
//    var sharedDataAccess = DataAccess()
//    var team : Int! = 15
//    func setData(data:Int) -> Void{
//        sharedDataAccess = DataAccess()
//    }
//}
//class SomeManager {
//    static var sharedInstance:Int = SomeManager()
//}
class TeamClass {

    static let teams = TeamClass()
    var team:Int = 15
    init() {} //This prevents others from using the default '()' initializer for this class.
}
struct Global {
    static var team = Int()
}


