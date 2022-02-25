//
//  SecondViewController.swift
//  DelegationExample
//
//  Created by ruslan on 12.10.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    weak var delegate: VCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextField.delegate = self
    }

}

extension SecondViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return false }
        delegate?.update(text: text)
        return true
    }
}
