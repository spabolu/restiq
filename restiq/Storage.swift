//
//  Repository.swift
//  restiq
//
//  Created by Saketh Pabolu on 12/31/24.
//

import SwiftUI

let locations = ["Local", "SFTP", "Amazon S3", "Wasabi", "Backblaze B2"]

struct Storage: View {
    @State private var showAddStorage = false

    var body: some View {
        VStack {
            Text("Add Storage Location")
                .padding(.bottom, 6.0)

            Button("Add Storage Location") {
                showAddStorage = true // Trigger modal
            }
            .buttonStyle(.borderedProminent)
        }
        .sheet(isPresented: $showAddStorage) {
            AddStorageView()
        }
    }
}

#Preview {
    ContentView() // Preview the Storage view
}
