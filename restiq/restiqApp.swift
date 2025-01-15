//
//  restiqApp.swift
//  restiq
//
//  Created by Saketh Pabolu on 12/31/24.
//

import SwiftUI

import SwiftUI

@main
struct RestiqApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 600, minHeight: 400)
                .onAppear {
                    setWindowConstraints()
                }
        }
    }

    private func setWindowConstraints() {
        DispatchQueue.main.async {
            if let window = NSApplication.shared.windows.first {
                window.minSize = NSSize(width: 600, height: 400)
            }
        }
    }
}
