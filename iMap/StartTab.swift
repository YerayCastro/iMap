//
//  ContentView.swift
//  iMap
//
//  Created by Yery Castro on 17/4/24.
//

import SwiftUI
import SwiftData

struct StartTab: View {
    var body: some View {
        TabView {
            Group {
                TripMapView()
                    .tabItem { Label("TripMap", systemImage: "map") }
                DestinationsListView()
                    .tabItem { Label("Destinations", systemImage: "globe.desk") }
            }
            .toolbarBackground(.appBlue.opacity(0.8), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
        }
    }
}

#Preview {
    StartTab()
        .modelContainer(Destination.preview)
        .environment(LocationManager())
}
