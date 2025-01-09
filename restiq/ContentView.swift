//
//  ContentView.swift
//  restiq
//
//  Created by Saketh Pabolu on 12/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedView: String? = "Dashboard" // Default selection

    var body: some View {
        NavigationSplitView {
            List(selection: $selectedView) {
                NavigationLink("Dashboard", value: "Dashboard")
                NavigationLink("Storage", value: "Storage")
                NavigationLink("Backup", value: "Backup")
                NavigationLink("Restore", value: "Restore")
            }
            .listStyle(SidebarListStyle())
        } detail: {
            if let view = selectedView {
                switch view {
                case "Dashboard":
                    Dashboard(selectedView: $selectedView)
                case "Storage":
                    Storage()
                case "Backup":
                    Backup()
                case "Restore":
                    Restore()
                default:
                    Text("Select a valid option")
                }
            } else {
                Text("Select an option")
            }
        }
    }
}

#Preview {
    ContentView()
}
