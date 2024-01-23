//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Pelin Üstünel on 2.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Simpson Object(Class)
        let homer = Simpson(nameInit: "Homer Simpson", jobInit: "Nuclear Safety",
                            imageInit: UIImage(named: "homer")!)
        let marge = Simpson(nameInit: "Marge Simpson", jobInit: "Housewife",
                            imageInit: UIImage(named: "marge")!)
        let bart = Simpson(nameInit: "Bart Simpson", jobInit: "Student",
                            imageInit: UIImage(named: "bart")!)
        let lisa = Simpson(nameInit: "Lisa Simpson", jobInit: "Student",
                            imageInit: UIImage(named: "lisa")!)
        let maggie = Simpson(nameInit: "Maggie Simpson", jobInit: "Baby",
                            imageInit: UIImage(named: "maggie")!)
   
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
}

