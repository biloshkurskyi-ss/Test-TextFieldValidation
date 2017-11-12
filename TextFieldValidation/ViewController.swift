//
//  ViewController.swift
//  TextFieldValidation
//
//  Created by Sergey Biloshkurskyi on 11/12/17.
//  Copyright © 2017 Sergey Biloshkurskyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldFirst: UITextField!
    @IBOutlet weak var textFieldSecond: UITextField!
    @IBOutlet weak var textFieldThird: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.isEnabled = validation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        print("Active button")
    }
    
    func validation() -> Bool {
        for tf in [textFieldFirst, textFieldSecond, textFieldThird] {
            guard let text = tf?.text, !text.isEmpty else { return false }
        }
        return true
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        button.isEnabled = validation()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
