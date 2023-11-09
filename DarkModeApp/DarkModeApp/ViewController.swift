//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Pelin Üstünel on 19.07.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
         
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark{
            changeButton.tintColor = UIColor.white
        } else{
            changeButton.tintColor = UIColor.blue
        }

    }
    
    //dark mode and light mode understand
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark{
            changeButton.tintColor = UIColor.white
        } else{
            changeButton.tintColor = UIColor.blue
        }

    }


}

