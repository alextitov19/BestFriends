//
//  SignUpViewController.swift
//  BestFriends
//
//  Created by Alex Titov on 3/29/21.
//

import UIKit
import Amplify
import AmplifyPlugins

class SignUpViewController: UIViewController {

    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func confirmClicked(_ sender: UIButton) {
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        let birthdate = datePicker.date
        signUp(username: email, password: password)

    }
    
    func signUp(username: String, password: String) {
        Amplify.Auth.signUp(username: username, password: password) { result in
            switch result {
            case .success(let signUpResult):
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    print("Delivery details \(String(describing: deliveryDetails))")
                } else {
                    print("SignUp Complete")
                }
            case .failure(let error):
                print("An error occurred while registering a user \(error)")
            }
        }
    }
    


}
