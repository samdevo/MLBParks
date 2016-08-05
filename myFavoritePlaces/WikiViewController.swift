//
//  WikiViewController.swift
//  myFavoritePlaces
//
//  Created by Sam Devorsetz on 8/4/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit

class WikiViewController: UIViewController, UITabBarDelegate {
    let teams = TeamClass()
    @IBOutlet weak var wikiView: UIWebView!
    var myLocations:[Location] = []
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        viewDidLoad()
        wikiView.reload();
    }
    func tabBar(tabBar: UITabBar, didEndCustomizingItems items: [UITabBarItem], changed: Bool) {
        viewDidLoad()
        wikiView.reload();
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLocations = Location.createDefaultLocations()
        let url = NSURL(string: Location.createDefaultLocations()[Global.team].web)
        let requestObj = NSURLRequest(URL: url!)
        wikiView.loadRequest(requestObj)

        // Do any additional setup after loading the view.
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
    @IBAction func button(sender: AnyObject) {
        viewDidLoad()
    }

}
