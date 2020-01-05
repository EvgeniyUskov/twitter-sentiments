//
//  ViewController.swift
//  Twittermenti
//
//  Created by Angela Yu on 17/07/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!
    
    let swifter = Swifter(consumerKey: "", consumerSecret: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let secretsPList: NSDictionary = getPlist(nameWithoutExt: "Secrets")
//        let apiKey = secretsPList.object(forKey: "API Key")
//        let apiSecret = secretsPList.object(forKey: "API Secret")
        // Instantiation using Twitter's OAuth Consumer Key and secret
        swifter.searchTweet(using: <#T##String#>, success: { (resultsJSON, metadataJSON) in
            print(resultsJSON)
        }) { (error) in
            print("ERROR getting API Request: \(error)")
        }
        
    }

    @IBAction func predictPressed(_ sender: Any) {

    }
    
    // MARK: plist manipulationMethods
    
    func getPlist(nameWithoutExt: String) -> NSDictionary {
        var propList: NSDictionary?
        if let path = Bundle.main.path(forResource: nameWithoutExt, ofType: "plist") {
            propList = NSDictionary(contentsOfFile: path)
        }
        if let propListContent = propList {
            return propListContent
        }
        return NSDictionary()
    }
    
}

