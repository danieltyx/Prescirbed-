//
//  ContentView.swift
//  Prescribed
//
//  Created by Daniel T. on 6/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack
        {
            WelcomeView()
            var signedup = true
            SignUpLogInView()
            if signedup
            {
                SingUpView()
            }
            else
            {
                LoginView()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
