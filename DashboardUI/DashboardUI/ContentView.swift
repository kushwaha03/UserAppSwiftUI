//
//  ContentView.swift
//  DashboardUI
//
//  Created by Krishna Kushwaha on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Home Tab")
               .font(.system(size: 40,weight: .bold,design: .rounded))
               .tabItem {
                   Image(systemName: "house.fill")
                   Text("Home")
                   
               }.tag(0)
            Text("bookmark Tab")
               .font(.system(size: 40,weight: .bold,design: .rounded))
               .tabItem {
                Image(systemName: "bookmark.circle.fill")
                   Text("bookmark")
                   
               }.tag(1)
            Text("Video Tab")
               .font(.system(size: 40,weight: .bold,design: .rounded))
               .tabItem {
                   Image(systemName: "video.circle.fill")
                   Text("Video")
                   
               }.tag(2)
            Text("Profile Tab")
               .font(.system(size: 40,weight: .bold,design: .rounded))
               .tabItem {
                   Image(systemName: "person.crop.circle")
                   Text("Profile")
                   
               }.tag(3)
        }.accentColor(.red)
        .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
