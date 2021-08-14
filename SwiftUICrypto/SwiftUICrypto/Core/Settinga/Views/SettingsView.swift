//
//  SettingsView.swift
//  SwiftUICrypto
//
//  Created by Rahul on 14/8/21.
//

import SwiftUI

struct SettingsView: View {
    
    private let defaultURL = URL(string: "https://www.google.com")!
    private let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    private let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
    private let coingeckoURL = URL(string: "https://www.coingecko.com")!
    private let personalURL = URL(string: "https://www.github.com/rahhul")!
    
    var body: some View {
        NavigationView {
            List {
                swiftfulThinkingSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            })
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    private var swiftfulThinkingSection: some View {
        Section(header: Text("SwiftfulThinking")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a @SwiftfulThinking course on Youtube. It uses MVVM architecture, Combine and Core Data")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on Youtube 🥳", destination: youtubeURL)
            Link("Support his coffee addiction ☕️", destination: coffeeURL)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinCgecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data comes from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Rahul Koduri. Uses SwiftUI, Multi-threading, Combine and Data persistence.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.theme.accent)
            }
            .padding(.vertical)
            Link("Visit profile", destination: personalURL)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Developer")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
    
}
