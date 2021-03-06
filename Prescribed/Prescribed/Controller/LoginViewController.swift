//
//  LoginViewController.swift
//  Prescribed
//
//  Created by Yanying Huo on 7/18/21.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth


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
    
    let loginToCheckin = "LoginToCheckin"
    let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let ref = Database.database().reference(withPath: "prescribed-d767b-default-rtdb")
    var email = ""
    var firstname = ""
    var lastname = ""
    var userInfoRef: DatabaseReference!
    
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
        
        Auth.auth().addStateDidChangeListener()
        {
            auth, user in if user != nil
            {
                
                //self.performSegue(withIdentifier: self.loginToCheckin, sender: nil)
                
                self.emailTextField.text = nil
                self.passwordTextField.text = nil
                //self.appDelegate.window?.rootViewController = self.tabBarController
            }
        }
        
        userInfoRef = Database.database().reference(withPath: "UserInfo")


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
    @IBAction func loginDidTouch(_ sender: Any)
    {
        guard
          let email = emailTextField.text,
          let password = passwordTextField.text,
          email.count > 0,
          password.count > 0
          else
            {
                return
            }
   
        Auth.auth().signIn(withEmail: email, password: password)
        { user, error in
          if let error = error, user == nil
          {
            let alert = UIAlertController(title: "Sign In Failed",
                                          message: error.localizedDescription,
                                          preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            
            self.present(alert, animated: true, completion: nil)
          }
        }
    }
    
    @IBAction func backAction(_ sender: Any) {
    }
    
}
