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
    @IBOutlet weak var loginWatermark: UILabel!
    
    @IBOutlet weak var vector1: UILabel!
    @IBOutlet weak var vector2: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.863, green: 0.894, blue: 0.906, alpha: 1)
        
        loginLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        loginLabel.font = UIFont(name: "Poppins-Medium", size: 24)
        loginLabel.text = "Login"
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.8
        
        directionsLabel.textColor = UIColor(red: 0.086, green: 0.706, blue: 0.149, alpha: 1)
        directionsLabel.font = UIFont(name: "Poppins-Medium", size: 30)
        directionsLabel.lineBreakMode = .byWordWrapping
        directionsLabel.attributedText = NSMutableAttributedString(string: "Log in with your credentials ", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        passwordLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        passwordLabel.font = UIFont(name: "Poppins-Medium", size: 24)
        passwordLabel.text = "Password"
        
//        passwordLabel.backgroundColor = .white
        passwordTextField.textColor = UIColor(red: 0.533, green: 0.533, blue: 0.533, alpha: 1)
        passwordTextField.font = UIFont(name: "Poppins-Regular", size: 18)
        passwordTextField.text = "Enter Email"
        
        
        emailLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        emailLabel.font = UIFont(name: "Poppins-Medium", size: 24)
        emailLabel.text = "Email"
        
        emailTextField.backgroundColor = .white
        emailTextField.textColor = UIColor(red: 0.533, green: 0.533, blue: 0.533, alpha: 1)
        emailTextField.font = UIFont(name: "Poppins-Regular", size: 18)
        emailTextField.text = "Enter Email"
//        emailTextField.frame = CGRect(x: 0, y: 0, width: 284, height: 27)
    
        
        loginButton.layer.cornerRadius = 20
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1).cgColor
        loginButton.titleLabel?.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        loginButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 16)
        loginButton.titleLabel?.textAlignment = .center
        
        loginWatermark.textColor = UIColor(red: 0.086, green: 0.706, blue: 0.149, alpha: 0.13)
        loginWatermark.font = UIFont(name: "Poppins-Medium", size: 72)
        loginWatermark.attributedText = NSMutableAttributedString(string: "Log In", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])

//        vector1.frame = CGRect(x: 50, y: 284, width: 275, height: 0)
//        vector1.backgroundColor = .white
//
//        vector2.frame = CGRect(x: 50, y: 384, width: 275, height: 0)
//        vector2.backgroundColor = .white
//
//
//        var stroke = UIView()
//
//        stroke.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
//        stroke.center = view.center
//
//
//        vector1.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
//
//
//        vector2.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
//
//        stroke.layer.borderWidth = 1
//        stroke.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor


        self.view.addSubview(backButton)
        self.view.addSubview(directionsLabel)
        self.view.addSubview(loginLabel)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(emailLabel)
        self.view.addSubview(loginButton)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(emailTextField)
//        self.view.addSubview(vector1)
//        self.view.addSubview(vector2)


        
    }
    @IBAction func backAction(_ sender: Any) {
    }
    
}
