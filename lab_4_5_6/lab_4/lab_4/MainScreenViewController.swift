//
//  Screen_1_ViewController.swift
//  lab_4
//
//  Created by DL on 13/03/2023.
//

import UIKit

class MainScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackground()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupBackground()
    }
    
    func setupBackground() {
        self.view.backgroundColor = Background.currentBackground.backgroundColor
    }
}

extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
    }
}
