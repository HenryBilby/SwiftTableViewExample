//
//  ViewController.swift
//  TableView
//
//  Created by Henry Bilby on 27/08/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var exemploTableView: UITableView!
    
    let arrayNomes: [String] = ["Henry", "Miller", "Maia", "Bilby"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        exemploTableView.delegate = self
        exemploTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "A"
        }
        if section == 1 {
            return "B"
        }
        if section == 2 {
            return "C"
        }
        
        return ""
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print (arrayNomes[indexPath.row])
        
        let nextVC = NextViewController()
        self.navigationController?.pushViewController(nextVC,animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayNomes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayNomes[indexPath.row]
        cell.imageView?.image = UIImage(named: "ferrari")
        return cell
    }

}
