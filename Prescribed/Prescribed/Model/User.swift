//
//  User.swift
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

struct User {
    
    let uid: String
    let email: String
  
    init(authData: FirebaseAuth.User)
    {
        self.email = authData.email!
        self.uid = authData.uid
    }
  
    init(uid: String, email: String)
    {
        self.uid = uid
        self.email = email
    }
}
