//
//  LoginVC.swift
//  CameraApp
//
//  Created by Abdullah AlRashoudi on 12/2/21.
//

import UIKit

class LoginVC: UIViewController {
 
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
        self.hideKeyboardWhenTappedAround()
        // AppName
        mainLabel.text = "Camera App"
        mainLabel.textColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        mainLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        mainLabel.frame = CGRect(x: 100, y: 70, width: 230, height: 60)
        view.addSubview(mainLabel)
        
        // Logo
        
        logo.frame = CGRect(x: 130, y: 300, width: 150, height: 150)
        logo.image = UIImage(named: "logo")
        view.addSubview(logo)

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
        
        //TextEmpty
        
        textEmpty.frame = CGRect(x: 50, y: 740, width: 350, height: 30)
        textEmpty.textColor = .red
        view.addSubview(textEmpty)
        
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
        if usernameField.text!.isEmpty == false && passwordField.text!.isEmpty == false {
           
        
            let nextVC = PhotoVC()
            nextVC.modalTransitionStyle = .partialCurl
            nextVC.modalPresentationStyle = .fullScreen
            present(nextVC, animated: true, completion: nil)
            nextVC.nameLable.text = "Welcome " + usernameField.text!
                        
        } else {
            textEmpty.text = "Please make sure you enter your username"
        }
    }
    
    @objc func signUp() {
        
    }
    
}

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
