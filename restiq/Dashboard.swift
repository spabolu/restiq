//
//  Dashboard.swift
//  restiq
//
//  Created by Saketh Pabolu on 12/31/24.
//

import SwiftUI

struct Dashboard: View {
    @Binding var selectedView: String?

    var body: some View {
        VStack {
            Text("No backups detected.")
                .padding(.bottom, 6.0)

            Button("Create Backup") {
                selectedView = "Storage"
            }
        }
    }
}

#Preview {
    ContentView()
}
