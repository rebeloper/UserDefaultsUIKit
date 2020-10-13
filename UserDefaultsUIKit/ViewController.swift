//
//  ViewController.swift
//  UserDefaultsUIKit
//
//  Created by Alex Nagy on 13/10/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UserDefaults.standard.set(12, forKey: "score")
        let value = UserDefaults.standard.integer(forKey: "score")
        print(value)
        
        let profile = Profile(name: "Alex", age: 5)
        do {
            try UserDefaults.standard.setObject(profile, forKey: "profile")
        } catch {
            print(error.localizedDescription)
        }
        
        do {
            let profile = try UserDefaults.standard.getObject(forKey: "profile", castTo: Profile.self)
            print(profile)
        } catch {
            print(error.localizedDescription)
        }
        
        if let sharedUserDefaults = UserDefaults(suiteName: "group.com.rebeloper.UserDefaultsUIKit") {
            sharedUserDefaults.set(true, forKey: "cool")
        }
        
    }


}

