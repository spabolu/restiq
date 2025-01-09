//
//  AddStorageView.swift
//  restiq
//
//  Created by Saketh Pabolu on 1/1/25.
//

import SwiftUI

struct AddStorageView: View {
    @Environment(\.dismiss) var dismiss
    @State private var selected = 0
    
    private let locations = ["Local", "SFTP", "Amazon S3", "Wasabi", "Backblaze B2"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Add a Storage Location")
                .font(.title2)
                .padding(.bottom)

            // Radio buttons for selecting a location
            Picker("Choose a location", selection: $selected) {
                ForEach(0..<locations.count, id: \.self) { index in
                    Text(locations[index]).tag(index)
                }
            }
            .pickerStyle(.radioGroup)

            Text("You selected: \(locations[selected])")
                .padding(.top)

            Spacer()
            
            HStack {
                Button("Cancel") {
                    dismiss() // Dismiss the modal
                }
                .buttonStyle(.bordered)
                
                Spacer()
                
                Button("Continue") {
                    print("Selected location: \(locations[selected])")
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
        .frame(width: 400, height: 300)
    }
}


#Preview {
    AddStorageView()
        .frame(width: 500, height: 400)
}
