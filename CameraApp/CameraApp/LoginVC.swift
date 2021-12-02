//
//  LoginVC.swift
//  CameraApp
//
//  Created by Abdullah AlRashoudi on 12/2/21.
//

import UIKit

class LoginVC: UIViewController {
    let mainLabel = UILabel()
    let usernameField = UITextField()
    let passwordField = UITextField()
    let loginButton = UIButton()
    let signUpLabel = UILabel()
    let signUpButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // AppName
        mainLabel.text = "Camera App"
        mainLabel.textColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        mainLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        mainLabel.frame = CGRect(x: 100, y: 70, width: 230, height: 60)
        view.addSubview(mainLabel)
        
        //UserName
        usernameField.borderStyle = .roundedRect
        usernameField.placeholder = "Please enter your username"
        usernameField.frame = CGRect(x: 70, y: 600, width: 300, height: 40)
        view.addSubview(usernameField)
        
        // Password
        
        passwordField.borderStyle = .roundedRect
        passwordField.placeholder = "Please enter your password"
        passwordField.isSecureTextEntry = true
        passwordField.frame = CGRect(x: 70, y: 650, width: 300, height: 40)
        view.addSubview(passwordField)
        
        // LoginButton
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1), for: .normal)
        loginButton.backgroundColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        loginButton.frame = CGRect(x: 150, y: 700, width: 130, height: 40)
        loginButton.layer.cornerRadius = 15
        loginButton.addTarget(self, action: #selector(login) , for: .touchUpInside)
        view.addSubview(loginButton)
        
        // SignUpLabel
        
        signUpLabel.text = "You don't have an account?"
        signUpLabel.textColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        signUpLabel.font = .systemFont(ofSize: 17, weight: .regular)
        signUpLabel.frame = CGRect(x: 30, y: 750, width: 300, height: 60)
        signUpLabel.textAlignment = .center
        view.addSubview(signUpLabel)
        
        // SignUpButton
        signUpButton.setTitle("SignUp", for: .normal)
        signUpButton.setTitleColor(#colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1), for: .normal)
        signUpButton.frame = CGRect(x: 255, y: 760, width: 130, height: 40)
        signUpButton.layer.cornerRadius = 10
        signUpButton.addTarget(self, action: #selector(signUp) , for: .touchUpInside)
        signUpButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        view.addSubview(signUpButton)
        
        
    }
    
    @objc func login(){
        let nextVC = PhotoVC()
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
    
    @objc func signUp() {
        
    }
}

