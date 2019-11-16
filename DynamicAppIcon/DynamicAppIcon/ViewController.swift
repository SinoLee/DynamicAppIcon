//
//  ViewController.swift
//  DynamicAppIcon
//
//  Created by Taeyoun Lee on 2019/11/17.
//  Copyright © 2019 SwiftLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // change app icon to "pichu"
    @IBAction func appIcon1ButtonDidTap(_ sender: UIButton) {
      changeIcon(to: "AppIcon1")
    }
    
    // change app icon to "pikachu"
    @IBAction func appIcon2ButtonDidTap(_ sender: UIButton) {
      changeIcon(to: "AppIcon2")
    }
    
    // change app icon to "raichu"
    @IBAction func appIcon3ButtonDidTap(_ sender: UIButton) {
      changeIcon(to: "AppIcon3")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeIcon(to iconName: String) {
        // 1
        guard UIApplication.shared.supportsAlternateIcons else { return }
        
        // 2
        UIApplication.shared.setAlternateIconName(iconName, completionHandler: { (error) in
            // 3
            if let error = error {
                print("App icon failed to change due to \"\(error.localizedDescription)\"")
            } else {
                print("App icon changed successfully")
            }
        })
    }

}

