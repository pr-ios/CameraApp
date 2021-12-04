//
//  LoginVC.swift
//  CameraApp
//
//  Created by Abdullah AlRashoudi on 12/2/21.
//

import UIKit

class LoginVC: UIViewController {
    
    // Properties
    
    let logo = UIImageView()
    let mainLabel = UILabel()
    let usernameField = UITextField()
    let passwordField = UITextField()
    let loginButton = UIButton()
    let signUpLabel = UILabel()
    let signUpButton = UIButton()
    let textEmpty = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        hideKeyboardWhenTappedAround()
        
        // AppName
       
        mainLabel.text = "Camera App"
        mainLabel.textColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        mainLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        mainLabel.frame = CGRect(x: 100, y: 70, width: 230, height: 60)
        view.addSubview(mainLabel)
        
        // Logo
        
        logo.frame = CGRect(x: 160, y: 150, width: 100, height: 100)
        logo.image = UIImage(named: "logo")
        view.addSubview(logo)

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
        
        // LoginButton
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor( .white, for: .normal)
        loginButton.backgroundColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        loginButton.frame = CGRect(x: 15, y: 490, width: 400, height: 40)
        loginButton.layer.cornerRadius = 15
        loginButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        loginButton.addTarget(self, action: #selector(login) , for: .touchUpInside)
        view.addSubview(loginButton)
        
        //TextEmpty
        
        textEmpty.frame = CGRect(x: 50, y: 450, width: 350, height: 30)
        textEmpty.textColor = .red
        view.addSubview(textEmpty)
        
        // SignUpLabel
        
        signUpLabel.text = "You don't have an account?"
        signUpLabel.font = .systemFont(ofSize: 17, weight: .regular)
        signUpLabel.frame = CGRect(x: 30, y: 400, width: 300, height: 60)
        signUpLabel.textAlignment = .center
        view.addSubview(signUpLabel)
        
        // SignUpButton
        
        signUpButton.setTitle("SignUp", for: .normal)
        signUpButton.setTitleColor(#colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1), for: .normal)
        signUpButton.frame = CGRect(x: 260, y: 410, width: 130, height: 40)
        signUpButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
        view.addSubview(signUpButton)
        
        
    }
    
    //Functions
    
    @objc func login(){
        
        if usernameField.text!.isEmpty == false && passwordField.text!.isEmpty == false {
           
            let nextVC = PhotoVC()
            nextVC.modalTransitionStyle = .coverVertical
            nextVC.modalPresentationStyle = .fullScreen
            present(nextVC, animated: true, completion: nil)
            nextVC.nameLable.text = "Welcome \(usernameField.text!)"
                        
        } else {
            textEmpty.text = "Please make sure you enter your username"
        }
    }
    
    @objc func signUp() {
        
        let vc = SignUpVC()
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
}

// Extensions

extension UIImageView {

   func setRounded() {
     
      self.layer.cornerRadius = self.frame.width / 2
      self.layer.masksToBounds = true
   }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}


