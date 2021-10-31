//
//  prescribedViewController.swift
//  Prescribed
//
//  Created by Yanying Huo on 10/31/21.
//

import UIKit

class prescribedViewController: UIViewController {
    @IBOutlet weak var doctor1: UIButton!
    @IBOutlet weak var doctor2: UIButton!
    @IBOutlet weak var doctorLabel: UILabel!
    
    override func viewDidLoad()
    {
        self.view.backgroundColor = UIColor(red: 0.863, green: 0.894, blue: 0.906, alpha: 1)
        
        doctorLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        doctorLabel.font = UIFont(name: "Poppins-Regular", size: 43)
        
        doctor1.layer.cornerRadius = 20
        doctor1.titleLabel?.font = UIFont(name: "Poppins", size: 24)
        doctor1.titleLabel?.textAlignment = .center
        doctor1.backgroundColor = UIColor(red: 0.247, green: 0.875, blue: 0.31, alpha: 1)
        doctor1.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        doctor1.layer.shadowOpacity = 1
        doctor1.layer.shadowRadius = 4
        doctor1.layer.shadowOffset = CGSize(width: 0, height: 4)
        doctor1.clipsToBounds = true
        
        doctor2.layer.cornerRadius = 20
        doctor2.titleLabel?.font = UIFont(name: "Poppins", size: 24)
        doctor2.titleLabel?.textAlignment = .center
        doctor2.backgroundColor = UIColor(red: 0.247, green: 0.875, blue: 0.31, alpha: 1)
        doctor2.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        doctor2.layer.shadowOpacity = 1
        doctor2.layer.shadowRadius = 4
        doctor2.layer.shadowOffset = CGSize(width: 0, height: 4)
        doctor2.clipsToBounds = true
        
    }
    
}
