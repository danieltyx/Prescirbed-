//
//  LoginViewController.swift
//  Prescribed
//
//  Created by Yanying Huo on 7/18/21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var directionsLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.863, green: 0.894, blue: 0.906, alpha: 1)
        
        backButton.frame = CGRect(x: 0, y: 0, width: 38, height: 38)
    
        loginLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        loginLabel.font = UIFont(name: "Poppins-Medium", size: 24)
        loginLabel.text = "Login"
        
        passwordLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        passwordLabel.font = UIFont(name: "Poppins-Medium", size: 24)
        passwordLabel.text = "Password"
        
        passwordTextField.textColor = UIColor(red: 0.533, green: 0.533, blue: 0.533, alpha: 1)
        passwordTextField.font = UIFont(name: "Poppins-Regular", size: 18)
        passwordTextField.text = "Enter Email"
        passwordTextField.frame = CGRect(x: 0, y: 0, width: 284, height: 27)
        
        emailLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        emailLabel.font = UIFont(name: "Poppins-Medium", size: 24)
        emailLabel.text = "Email"
        
        emailTextField.textColor = UIColor(red: 0.533, green: 0.533, blue: 0.533, alpha: 1)
        emailTextField.font = UIFont(name: "Poppins-Regular", size: 18)
        emailTextField.text = "Enter Email"
        emailTextField.frame = CGRect(x: 0, y: 0, width: 284, height: 27)
    
        
        loginButton.layer.cornerRadius = 20
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1).cgColor
        loginButton.titleLabel?.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        loginButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18)
        loginButton.titleLabel?.textAlignment = .center
        
        self.view.addSubview(backButton)
        self.view.addSubview(loginLabel)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(emailLabel)
        self.view.addSubview(loginButton)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(emailTextField)


        
    }
    @IBAction func backAction(_ sender: Any) {
    }
    
}
