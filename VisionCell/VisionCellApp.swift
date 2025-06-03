//
//  VisionCellApp.swift
//  VisionCell
//
//  Created by Marcelle Ribeiro Queiroz on 13/11/24.
//

import SwiftUI

@main
struct VisionCellApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    SoundManager.playInstance.playBackground()
                }
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 2, height: 2, depth: 2, in: .meters)
    }
}
