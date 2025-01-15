//
//  SettingsView.swift
//  restiq
//
//  Created by Saketh Pabolu on 1/10/25.
//

import SwiftUI

struct FilesView: View {
    var body: some View {
        Text("wassup")
    }
}

struct SettingsView: View {

    var body: some View {
        TabView {
            Text("Tab 1")
                .tabItem {
                    Label("Settings", systemImage: "star")
                }
            
            Text("Tab 2")
                .tabItem {
                    Label("Schedule", systemImage: "circle")
                }
            FilesView()
                .tabItem {
                    Label("Files", systemImage: "circle")
                }
            Text("Tab 4")
                .tabItem {
                    Label("Options", systemImage: "circle")
                }
            Text("Tab 5")
                .tabItem {
                    Label("Encryption", systemImage: "circle")
                }
        }.padding(16.0)
    }
}

#Preview {
    SettingsView()
}
