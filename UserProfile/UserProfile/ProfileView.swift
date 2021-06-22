//
//  ContentView.swift
//  UserProfile
//
//  Created by Krishna Kushwaha on 22/06/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
        VStack {
            Image("me")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Krishna K")
                .font(.system(size: 35))

                .bold()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }.padding()
        .navigationTitle("Profile")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
