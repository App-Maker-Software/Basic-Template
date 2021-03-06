//
//  ContentView.swift
//  BasicTemplate
//
//  Created by Joseph Hinkle on 1/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem { Label("Home", systemImage: "house") }
            if AM_SHOW_MAP {
                MapView().tabItem { Label("Map", systemImage: "map") }
            }
            AboutView().tabItem { Label("About", systemImage: "info") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
