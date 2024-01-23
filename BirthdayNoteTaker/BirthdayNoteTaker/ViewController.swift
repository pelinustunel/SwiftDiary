//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Pelin Üstünel on 19.06.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting as? vs as!
        
        if let newName = storedName as? String{
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
    }

    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(NameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        nameLabel.text = "Name: \(NameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
        
        
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if storedName is String {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if storedBirthday is String{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
        
        
    }
    
    
}

