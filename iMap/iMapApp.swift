//
//  iMapApp.swift
//  iMap
//
//  Created by Yery Castro on 17/4/24.
//

import SwiftUI
import SwiftData

@main
struct iMapApp: App {
    @State private var locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            if locationManager.isAuthorized {
                StartTab()
            } else {
                LocationDeniedView()
            }
        }
        .modelContainer(for: Destination.self)
        .environment(locationManager)
    }
}
