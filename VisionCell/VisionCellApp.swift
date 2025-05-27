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
//        .defaultSize(width: 1, height: 1.5, depth: 1, in: .meters)
    }
}
