//
//  Screen_3_ViewController.swift
//  lab_4
//
//  Created by DL on 13/03/2023.
//

import UIKit

class SetNewColorViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackground()
    }
    
    func setupBackground() {
        self.view.backgroundColor = Background.currentBackground.backgroundColor
    }
    
    @IBAction func setTealBackground(_ sender: Any) {
        Background.currentBackground = TealBackground()
        setupBackground()
        
        let saveBackground = "teal"
        UserDefaults.standard.set(saveBackground, forKey: "currentBackground")
    }
    
    @IBAction func setWhiteBackground(_ sender: Any) {
        Background.currentBackground = WhiteBackground()
        setupBackground()
        
        let saveBackground = "white"
        UserDefaults.standard.set(saveBackground, forKey: "currentBackground")
    }
    
    @IBAction func setOrangeBackground(_ sender: Any) {
        Background.currentBackground = OrangeBackground()
        setupBackground()
        
        let saveBackground = "orange"
        UserDefaults.standard.set(saveBackground, forKey: "currentBackground")
    }
    
    
}
