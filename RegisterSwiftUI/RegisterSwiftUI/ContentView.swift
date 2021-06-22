//
//  ContentView.swift
//  RegisterSwiftUI
//
//  Created by Krishna Kushwaha on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var fName = ""
    @State private var lName = ""
    @State private var eMail = ""
    @State private var pWord = ""

    var body: some View {
        NavigationView {
        VStack {
            TextField("First Name", text: $fName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Last Name", text: $lName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Email", text: $eMail)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Password", text: $pWord)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Register") {
                guard !self.fName.isEmpty, !self.lName.isEmpty,!self.eMail.isEmpty, !self.pWord.isEmpty else { return }
                
                print("here",fName,lName,eMail,pWord)
            }
            }.padding()
        .navigationTitle("Register")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
