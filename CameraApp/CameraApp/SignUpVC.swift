//
//  SignUpVC.swift
//  CameraApp
//
//  Created by Abdullah AlRashoudi on 12/4/21.
//

import UIKit

class SignUpVC: UIViewController {
    
    // Properties
    
    let mainLabel = UILabel()
    let emailField = UITextField()
    let usernameField = UITextField()
    let passwordField = UITextField()
    let signUpButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        hideKeyboardWhenTappedAround()
        
        // AppName
       
        mainLabel.text = "SignUp Page"
        mainLabel.textColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        mainLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        mainLabel.frame = CGRect(x: 100, y: 70, width: 300, height: 60)
        view.addSubview(mainLabel)
        
        // Email
        
        emailField.borderStyle = .roundedRect
        emailField.placeholder = "Please enter your email"
        emailField.frame = CGRect(x: 15, y: 250, width: 400, height: 40)
        view.addSubview(emailField)
        
        //UserName
        
        usernameField.borderStyle = .roundedRect
        usernameField.placeholder = "Please enter your username"
        usernameField.frame = CGRect(x: 15, y: 300, width: 400, height: 40)
        view.addSubview(usernameField)
        
        // Password
        
        passwordField.borderStyle = .roundedRect
        passwordField.placeholder = "Please enter your password"
        passwordField.isSecureTextEntry = true
        passwordField.frame = CGRect(x: 15, y: 350, width: 400, height: 40)
        view.addSubview(passwordField)
       
        signUpButton.setTitle("SignUp", for: .normal)
        signUpButton.setTitleColor( .white, for: .normal)
        signUpButton.backgroundColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        signUpButton.frame = CGRect(x: 15, y: 410, width: 400, height: 40)
        signUpButton.layer.cornerRadius = 15
        signUpButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        signUpButton.addTarget(self, action: #selector(signUp) , for: .touchUpInside)
        view.addSubview(signUpButton)
    }
    
    @objc func signUp() {
        
        let previousVC = LoginVC()
        previousVC.modalTransitionStyle = .coverVertical
        previousVC.modalPresentationStyle = .fullScreen
        present(previousVC, animated: true, completion: nil)
    }

}
