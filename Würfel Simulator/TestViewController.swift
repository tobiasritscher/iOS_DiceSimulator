//
//  ViewController.swift
//  D&D Dice
//
//  Created by Tobias Ritscher on 18.02.20.
//  Copyright © 2020 Tobias Ritscher. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let alert = UIAlertController(title: "Sechseleuten ist abgesagt", message: nil, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        self.present(alert, animated: true)
    }

}

