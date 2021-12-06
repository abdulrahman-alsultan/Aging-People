//
//  ViewController.swift
//  Aging People
//
//  Created by admin on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var names = [
        "getCoffee()",
        "Abdulrahman",
        "Ali",
        "Fahad",
        "Noura",
        "Abdullah",
        "Reem",
        "Khalid",
        "Mohammed",
        "Ahmed",
        "Naser",
        "Saud",
    ]
    
    var ages: [Int] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for _ in 1...12{
            ages.append(Int.random(in: 5...95))
        }
        tableView.dataSource = self
        
    }
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomCell
        
        cell.nameLbl?.text = names[indexPath.row]
        cell.ageLbl?.text = "\(ages[indexPath.row]) years old"
        
        
        return cell
    }
    
    
}

