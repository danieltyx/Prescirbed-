//
//  UserInfo.swift
//  Prescribed
//
//  Created by Yanying Huo on 7/4/21.


import Foundation
import Foundation
import Firebase
import FirebaseDatabase
import FirebaseAuth
import FirebaseFirestore
import FirebaseCoreDiagnostics
import FirebaseAnalytics

struct UserInfo {
    
    let ref: DatabaseReference!
    let firstname: String
    let lastname: String
    //let uid: String
    let email: String
    
  
    init(firstname: String, lastname: String,  email: String)
    {
        self.ref = nil
        self.firstname = firstname
        self.lastname = lastname
        //self.uid = uid
        self.email = email
    }
    
    init?(snapshot: DataSnapshot) {
      guard
        let value = snapshot.value as? [String: AnyObject],
        let firstname = value["firstname"] as? String,
        let lastname = value["lastname"] as? String,
        let email = value["email"] as? String
        else {
        return nil
      }
      
      self.ref = snapshot.ref
        self.firstname = firstname
        self.lastname = lastname
        //self.uid = uid
        self.email = email
    }
    
    func toAnyObject() -> Any
    {
        return [
          "firstname": firstname,
            "lastname": lastname,
            "email": email
        ]
    }
    
    
}
