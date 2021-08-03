//
//  ViewController.swift
//  SSLPinning
//
//  Created by dhilip  on 25/01/20.
//  Copyright © 2020 dhilip . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: "https://www.google.co.in") else { return }
        ServiceManager().callAPI(withURL: url, isCertificatePinning: true) { (message) in
            let alert = UIAlertController(title: "SSLPinning", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

