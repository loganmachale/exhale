//  exhaleApp.swift
import SwiftUI

@main
struct exhaleApp: App {
    @ObservedObject private var settingsModel = SettingsModel()
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    init() {
        appDelegate.settingsModel = settingsModel
    }
    
    var body: some Scene {
        Settings {
            EmptyView()
        }
        .commands {
            CommandGroup(replacing: .appSettings) {
                Button("Preferences...") {
                    appDelegate.showSettings(nil)
                }
                .environmentObject(settingsModel)
                .keyboardShortcut(",", modifiers: .command)
                Button("Quit exhale") {
                    NSApp.terminate(nil)
                }
                .keyboardShortcut("q", modifiers: .command)
            }
        }
    }
}
