import SwiftUI
import AppKit

@main
struct CoreControlApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(PremiumManager.shared)
                .environmentObject(ThemeManager.shared)
                .environmentObject(SystemMonitor.shared)
                .environmentObject(SmartModeManager.shared)
                .frame(minWidth: 980, minHeight: 640)
        }
        .windowStyle(.hiddenTitleBar)

        Settings {
            SettingsView()
                .environmentObject(PremiumManager.shared)
                .environmentObject(ThemeManager.shared)
                .environmentObject(SystemMonitor.shared)
                .environmentObject(SmartModeManager.shared)
                .frame(minWidth: 520, minHeight: 420)
        }
    }
}

