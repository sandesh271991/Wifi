//
//  ViewController.swift
//  WiFi
//
//  Created by sandesh sardar on 02/02/18.
//  Copyright © 2018 sandesh sardar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let configuration = NEHotspotConfiguration.init(ssid: "SSIDname", passphrase: "Password", isWEP: false)
        configuration.joinOnce = true
        
        
        NEHotspotConfigurationManager.shared.apply(configuration) { (error) in
            if error != nil {
                if error?.localizedDescription == "already associated."
                {
                    print("Connected")
                }
                else{
                    print("No Connected")
                }
            }
            else {
                print("Connected")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

