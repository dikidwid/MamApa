//
//  MainView.swift
//  MamApa
//
//  Created by Diki Dwi Diro on 01/04/24.
//

import SwiftUI

enum Tab {
    case Profile
    case Home
    case Cookbook
}

struct MainView: View {
    
    @State private var selectedTab: Tab = .Home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tag(Tab.Home)
                .tabItem { Label("Discover", systemImage: "fork.knife") }
            
            CookbookView()
                .tag(Tab.Cookbook)
                .tabItem { Label("Cookbook", systemImage: "book") }

            ProfileView()
                .tag(Tab.Profile)
                .tabItem { Label("Profile", systemImage: "person") }
        }
        .tint(.appDarkGreen)
    }
}

#Preview {
    MainView()
}
