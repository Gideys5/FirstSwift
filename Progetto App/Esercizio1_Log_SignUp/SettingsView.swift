import SwiftUI

struct SettingsView: View {
    @State var isDarkMode: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                isDarkMode ? Color.black.ignoresSafeArea() : Color.white.ignoresSafeArea()

                
                Form {
                    Toggle("Dark Mode", isOn: $isDarkMode)

                    Button("Reset Settings") {
                        isDarkMode = false
                        print("Resetting Settings")
                    }
                    .foregroundColor(.red)
                }
            }.animation(.easeInOut, value: isDarkMode)

        }
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
