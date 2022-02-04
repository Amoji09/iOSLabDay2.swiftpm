import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkRow(landmark: landmarks[0])
        }
    }
}
