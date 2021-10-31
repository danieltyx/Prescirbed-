//
//  SignUpViewController.swift
//  Prescribed
//
//  Created by Yanying Huo on 9/23/21.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signUpWatermark: UILabel!
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var directionsLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var patientDoctor: UISegmentedControl!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.863, green: 0.894, blue: 0.906, alpha: 1)
        
        signUpLabel.textColor = UIColor(red: 0.094, green: 0.094, blue: 0.094, alpha: 1)
        signUpLabel.font = UIFont(name: "Poppins-Medium", size: 24)
        signUpLabel.text = "Sign Up"
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.8
        
        directionsLabel.textColor = UIColor(red: 0.086, green: 0.706, blue: 0.149, alpha: 1)
        directionsLabel.font = UIFont(name: "Poppins-Medium", size: 30)
        directionsLabel.lineBreakMode = .byWordWrapping
        directionsLabel.attributedText = NSMutableAttributedString(string: "Who are you?", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        signUpWatermark.textColor = UIColor(red: 0.086, green: 0.706, blue: 0.149, alpha: 0.13)
        signUpWatermark.font = UIFont(name: "Poppins-Medium", size: 72)
        signUpWatermark.attributedText = NSMutableAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        nextButton.titleLabel?.font = UIFont(name: "Poppins", size: 16)
        nextButton.widthAnchor.constraint(equalToConstant: 95).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
        nextButton.backgroundColor = UIColor(red: 0.247, green: 0.875, blue: 0.31, alpha: 1)
        nextButton.clipsToBounds = true
        nextButton.layer.cornerRadius = 20
        nextButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        nextButton.layer.shadowOpacity = 1
        nextButton.layer.shadowRadius = 4
        nextButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        let font = UIFont(name: "Poppins-Regular", size: 24)
        patientDoctor.selectedSegmentTintColor = UIColor(red: 0.247, green: 0.875, blue: 0.31, alpha: 1)
        patientDoctor.setTitleTextAttributes([NSAttributedString.Key.font: font!], for: .normal)
        patientDoctor.layer.cornerRadius = 20
        patientDoctor.layer.backgroundColor = UIColor(red: 0.635, green: 0.886, blue: 0.686, alpha: 1).cgColor
        patientDoctor.widthAnchor.constraint(equalToConstant: 226).isActive = true
        patientDoctor.heightAnchor.constraint(equalToConstant: 54).isActive = true
        patientDoctor.frame = CGRect(x: patientDoctor.frame.origin.x, y: patientDoctor.frame.origin.y, width: patientDoctor.frame.size.width, height: 54);

    }
    @IBAction func segmentedControl(_ sender: Any)
    {
        if(patientDoctor.selectedSegmentIndex == 1)
        {
            image.image = UIImage(named: "Doctor")
        }
        else
        {
            image.image = UIImage(named: "Patient Vector")
        }
      
    }
    
}
