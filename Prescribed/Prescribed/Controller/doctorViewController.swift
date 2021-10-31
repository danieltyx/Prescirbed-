//
//  doctorViewController.swift
//  Prescribed
//
//  Created by Yanying Huo on 10/31/21.
//

import UIKit

class doctorViewController: UIViewController
{
    
    @IBOutlet weak var prescriptionsLabel: UILabel!
    @IBOutlet weak var prescribed1: UIButton!
    @IBOutlet weak var prescribed2: UIButton!
    @IBOutlet weak var prescribed3: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.863, green: 0.894, blue: 0.906, alpha: 1)
        
        prescriptionsLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        prescriptionsLabel.font = UIFont(name: "Poppins-Regular", size: 28)
        
        prescribed1.layer.cornerRadius = 20
        prescribed1.titleLabel?.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        prescribed1.titleLabel?.font = UIFont(name: "Poppins", size: 24)
        prescribed1.titleLabel?.textAlignment = .center
        prescribed1.clipsToBounds = true
        prescribed1.backgroundColor = UIColor(red: 0.247, green: 0.875, blue: 0.31, alpha: 1)
        prescribed1.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        prescribed1.layer.shadowOpacity = 1
        prescribed1.layer.shadowRadius = 4
        prescribed1.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        prescribed2.titleLabel?.font = UIFont(name: "Poppins", size: 24)
        prescribed2.backgroundColor = UIColor(red: 0.247, green: 0.875, blue: 0.31, alpha: 1)
        prescribed2.clipsToBounds = true
        prescribed2.layer.cornerRadius = 20
        prescribed2.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        prescribed2.layer.shadowOpacity = 1
        prescribed2.layer.shadowRadius = 4
        prescribed2.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        prescribed3.titleLabel?.font = UIFont(name: "Poppins", size: 24)
        prescribed3.backgroundColor = UIColor(red: 0.247, green: 0.875, blue: 0.31, alpha: 1)
        prescribed3.clipsToBounds = true
        prescribed3.layer.cornerRadius = 20
        prescribed3.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        prescribed3.layer.shadowOpacity = 1
        prescribed3.layer.shadowRadius = 4
        prescribed3.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        self.view.addSubview(prescribed1)
        
    }
}
