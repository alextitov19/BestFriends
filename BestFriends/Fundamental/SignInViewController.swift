//
//  SignInViewController.swift
//  BestFriends
//
//  Created by Alex Titov on 3/29/21.
//

import UIKit
import Amplify
import AmplifyPlugins

class SignInViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func signInClicked(_ sender: UIButton) {
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        //signIn(username: email, password: password)
    }
    
//    func signIn(username: String, password: String) {
//        Amplify.Auth.signIn(username: username, password: password) { result in
//            switch result {
//            case .success:
//                print("Sign in succeeded")
//            case .failure(let error):
//                print("Sign in failed \(error)")
//            }
//        }
//    }
    
}
