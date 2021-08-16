//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by Rahul on 17/7/21.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    @State private var showLaunchView: Bool = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
        UINavigationBar.appearance().tintColor = UIColor(Color.theme.accent)
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some Scene {
        WindowGroup {
            
            ZStack {
                NavigationView {
                    HomeView()
                        .navigationBarHidden(true)
                }
                .environmentObject(vm)
                .navigationViewStyle(StackNavigationViewStyle())
                
                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .bottom))
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}
