//
//  ViewController.swift
//  UnitTestSample
//
//  Created by Nitin Bhatia on 4/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txtUserName: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    let userName = "nitin"
    let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles) // => 140
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        if txtUserName.text! == userName && txtPassword.text! == password {
            showAlert(message: "Success")
        } else {
            showAlert(message: "Fail")
        }
    }
    
    
    private func showAlert(message:String){
        let alert = UIAlertController(title: "info!", message: "Login " + message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}

