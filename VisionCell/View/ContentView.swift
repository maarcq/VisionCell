//
//  ContentView.swift
//  VisionCell
//
//  Created by Marcelle Ribeiro Queiroz on 13/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State var enlarge = false

    var body: some View {
        VStack {
            RealityView { content in
                
                if let scene = try? await Entity(named: "Cell", in: realityKitContentBundle) {
                    let group = scene.children[0].children.first {
                        $0.name == "Group"
                    }
                    
                    if let group {
                        for child in group.children {
//                            print(child.name)
                            if child.name == "nucleo" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                            if child.name == "reticuloEndoplasmaticoRugoso" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                            if child.name == "reticuloEndoplasmaticoLiso" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                            if child.name == "ribossomos" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                            if child.name == "complexoGolgi" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                            if child.name == "lisossomos" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                            if child.name == "centriolos" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                            if child.name == "mitocondrias" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                            if child.name == "vacuolos" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                            if child.name == "microtubulos" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                        }
                    }
                    
                    content.add(scene)
                }
            } update: { content in
                // Update the RealityKit content when SwiftUI state changes
                if let scene = content.entities.first {
                    let uniformScale: Float = enlarge ? 1.4 : 1.0
                    scene.transform.scale = [uniformScale, uniformScale, uniformScale]
                }
            }
            .gesture(TapGesture().targetedToAnyEntity().onEnded { value in
                print(value.entity.name)
            })

            VStack {
                Button {
                    enlarge.toggle()
                } label: {
                    Text(enlarge ? "Reduce RealityView Content" : "Enlarge RealityView Content")
                }
                .animation(.none, value: 0)
                .fontWeight(.semibold)
            }
            .padding()
            .glassBackgroundEffect()
        }
    }
}

#Preview(windowStyle: .volumetric) {
    ContentView()
}
