//
//  Screen_2_ViewController.swift
//  lab_4
//
//  Created by DL on 13/03/2023.
//

import UIKit

class TableViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var fruits = ["apple", "banana", "kiwi"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackground()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        cell?.label.text? = fruits[indexPath.row].localized()
        cell?.img.image = UIImage(named: fruits[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailCellVC") as? DetailCellViewController
        vc?.choosenFruit = fruits[indexPath.row]
        vc?.fruitImage = UIImage(named: fruits[indexPath.row])!
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            fruits.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func setupBackground() {
        self.view.backgroundColor = Background.currentBackground.backgroundColor
        tableView.backgroundColor = Background.currentBackground.backgroundColor
    }
}
