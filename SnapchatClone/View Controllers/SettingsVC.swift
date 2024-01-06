//
//  SettingsVC.swift
//  SnapchatClone
//
//  Created by Pelin Üstünel on 26.08.2023.
//

import UIKit
import Firebase

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOutClicked(_ sender: Any) {
        
        do{
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toSignInVC", sender: nil )
        } catch{
            
        }
        
      
    }
    

}
