//
//  ContentView.swift
//  restiq
//
//  Created by Saketh Pabolu on 12/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showSettings = false

    var body: some View {
        VStack {
            VStack(spacing: 4) {
                Text("Restiq Backup")
                    .font(.largeTitle)
                    .fontWeight(.semibold)

                Text("You are backed up as of: Today, 2:10 PM")
                Text("There are 12 backups available.")
            }
            .padding(.bottom, 4.0)

            HStack(spacing: 16) {
                VStack {

                    Button {
                        print("Backup Now tapped")
                    } label: {
                        Text("Backup Now")
                            .frame(maxWidth: 100.0)
                    }
                    .buttonStyle(.borderedProminent)

                    Button {
                        print("Restore tapped")
                    } label: {
                        Text("Restore")
                            .frame(maxWidth: 100.0)
                    }
                    .buttonStyle(.bordered)

                    Button {
                        print("Settings tapped")
                        showSettings = true
                    } label: {
                        Text("Settings")
                            .frame(maxWidth: 100.0)
                    }
                    .buttonStyle(.bordered)

                }

                Divider()
                    .frame(height: 78.0)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Selected for Backup: 2,558 files / 16,795 MB").font(
                        .callout)

                    Text("Backup Schedule: Daily")
                        .font(.callout)

                    Text("Storage Location: Backblaze B2")
                        .font(.callout)

                    Text("Remaining Files: 37 files / 1.2 GB")
                        .font(.callout)

                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)

            }
            .padding(.top, 14.0)

            HStack(spacing: 4) {
                Text("Source Code").foregroundColor(.blue).font(.footnote)
                Divider()
                    .frame(height: 10.0)
                Text("Buy Me a Coffee").foregroundColor(.blue).font(.footnote)
                Divider()
                    .frame(height: 10.0)
                Text("Report Bug").foregroundColor(.blue).font(.footnote)
            }
            .padding(.top, 10.0)
        }
        .sheet(isPresented: $showSettings) {
            SettingsView()
        }
    }
}

#Preview {
    ContentView()
        .frame(width: 600, height: 400)
}
