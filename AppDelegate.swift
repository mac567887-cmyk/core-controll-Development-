import AppKit

final class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        // Safe launch: all singletons used here must be lazy + non-crashing.
        MenuBarController.shared.setup()
        HotkeyManager.shared.registerGlobalHotkey()
        SoundManager.shared.prepare()

        // Start core engines.
        _ = SystemMonitor.shared
        _ = SmartModeManager.shared
        _ = PerformanceManager.shared
        _ = ThemeManager.shared
        _ = PremiumManager.shared
        _ = InsightsEngine.shared
        _ = AutomationEngine.shared
        PluginRegistry.shared.registerBuiltIns()

        // NEW: Local assistant + core performance engine (integrated).
        _ = CoreEngine.shared
    }
}

