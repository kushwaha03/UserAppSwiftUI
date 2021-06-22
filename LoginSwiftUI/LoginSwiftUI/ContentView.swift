//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Krishna Kushwaha on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var newUserName = ""
    @State private var newUserPass = ""

    var body: some View {
        NavigationView {
        VStack {
            TextField("Enter User Name", text: $newUserName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Enter Password", text: $newUserPass)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Login") {
                guard !self.newUserName.isEmpty, !self.newUserPass.isEmpty else { return }
                
                print("here",newUserName,newUserPass)
            }
            }.padding()
        .navigationTitle("Login")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
