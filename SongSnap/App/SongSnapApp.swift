//
//  SongSnapApp.swift
//  SongSnap
//
//  Created by Sergio Herrera on 1/8/24.
//

import SwiftUI

@main
struct SongSnapApp: App {
    @StateObject var viewModel = LyricsVM()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
