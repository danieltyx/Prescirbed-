//
//  WelcomeViewController.swift
//  Prescribed
//
//  Created by Yanying Huo on 7/11/21.
//

import UIKit

class WelcomeViewController: UIViewController
{
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var prescribedLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 0.863, green: 0.894, blue: 0.906, alpha: 1)
    
        welcomeLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        welcomeLabel.font = UIFont(name: "Poppins-Regular", size: 18)
        welcomeLabel.text = "Welcome to"
        
        prescribedLabel.textColor = UIColor(red: 0.086, green: 0.706, blue: 0.149, alpha: 1)
        prescribedLabel.font = UIFont(name: "Poppins-Regular", size: 36)
        prescribedLabel.text = "Prescribed!"
        
        
        signUpButton.layer.backgroundColor = UIColor(red: 0.247, green: 0.875, blue: 0.31, alpha: 1).cgColor
        signUpButton.layer.cornerRadius = 20
        signUpButton.layer.borderWidth = 1
        signUpButton.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        signUpButton.titleLabel?.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        signUpButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18)
        signUpButton.titleLabel?.textAlignment = .center
        
        
        loginButton.layer.cornerRadius = 20
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1).cgColor
        loginButton.titleLabel?.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        loginButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18)
        loginButton.titleLabel?.textAlignment = .center


        self.view.addSubview(welcomeLabel)
        self.view.addSubview(prescribedLabel)
        self.view.addSubview(signUpButton)
        self.view.addSubview(loginButton)


        
    }

    @IBAction func signUpAction(_ sender: Any) {
    }
    @IBAction func loginAction(_ sender: Any) {
    }
}
