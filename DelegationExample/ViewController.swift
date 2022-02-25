//
//  ViewController.swift
//  DelegationExample
//
//  Created by ruslan on 12.10.2021.
//

import UIKit

protocol VCDelegate: AnyObject {
    func update(text: String)
}

class ViewController: UIViewController, VCDelegate {
    
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.delegate = self
        }
    }
    
    func update(text: String) {
        myButton.setTitle(text, for: .normal)
    }
}

