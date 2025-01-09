//
//  Backup.swift
//  restiq
//
//  Created by Saketh Pabolu on 1/1/25.
//

import SwiftUI

struct BackupConfig: Identifiable {
    let id = UUID()
    let name: String
    let lastBackupDate: String
    let status: String
}

struct Backup: View {
    @State private var backupConfigs: [BackupConfig] = [
        BackupConfig(name: "Project A", lastBackupDate: "Jan 1, 2025", status: "Success"),
        BackupConfig(name: "Personal Files", lastBackupDate: "Dec 30, 2024", status: "Failed"),
        BackupConfig(name: "Photos", lastBackupDate: "Dec 25, 2024", status: "Success"),
        BackupConfig(name: "Documents", lastBackupDate: "Dec 20, 2024", status: "In Progress")
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Backup Configurations")
                .font(.title2)
                .padding(.bottom)

            List(backupConfigs) { config in
                HStack {
                    VStack(alignment: .leading) {
                        Text(config.name)
                            .font(.headline)
                        Text("Last Backup: \(config.lastBackupDate)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }

                    Spacer()

                    Text(config.status)
                        .font(.subheadline)
                        .padding(6)
                        .background(statusColor(for: config.status))
                        .foregroundColor(.white)
                        .cornerRadius(6)
                }
                .padding(.vertical, 4)
            }
            .listStyle(.inset)

            Spacer()

            Button("Add New Backup") {
                print("Add new backup configuration")
                // Add functionality for adding a new backup config here
            }
            .buttonStyle(.borderedProminent)
            .padding(.top)
        }
        .padding()
    }

    // Helper function to determine status color
    private func statusColor(for status: String) -> Color {
        switch status {
        case "Success":
            return Color.green
        case "Failed":
            return Color.red
        case "In Progress":
            return Color.orange
        default:
            return Color.gray
        }
    }
}

#Preview {
    Backup()
        .frame(width: 500, height: 400)
}
