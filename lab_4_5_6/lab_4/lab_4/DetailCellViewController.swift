//
//  Screen_2_1_ViewController.swift
//  lab_4
//
//  Created by DL on 13/03/2023.
//

import UIKit

class DetailCellViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var fruitImage = UIImage()
    var choosenFruit = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Item Detail".localized()
        
        label.text = "You have chosen:".localized()
        label.text! += " \(choosenFruit.localized())"
        img.image = fruitImage
        
        setupBackground()
    }
    
    @IBAction func showMessage(_ sender: Any) {
        let message = UIAlertController(title: "Message".localized(), message: "Good choice!".localized(), preferredStyle: .alert)
        let goHomeAction = (UIAlertAction(title: "Go home".localized(), style: .default) {
            (action) in self.navigationController?.popToRootViewController(animated: true)
        })
        
        message.addAction(goHomeAction)
        present(message, animated: true, completion: nil)
    }
    
    func setupBackground() {
        self.view.backgroundColor = Background.currentBackground.backgroundColor
    }
}
