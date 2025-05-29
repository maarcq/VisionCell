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
                // Add the initial RealityKit content
//                let boxSize = SIMD3<Float>(0.5, 0.1, 0.05)
//
//
//                let modelComponent = ModelComponent(
//                    mesh: MeshResource.generateBox(size: boxSize),
//                    materials: [SimpleMaterial(color: .black, roughness: 0.5, isMetallic: false)]
//                )
//                let collisionComponent = CollisionComponent(
//                    shapes: [ShapeResource.generateBox(size: boxSize)]
//                )
//                let inputTargetComponent = InputTargetComponent()
//                let hoverEffectComponent = HoverEffectComponent(.spotlight(
//                    HoverEffectComponent.SpotlightHoverEffectStyle(
//                        color: .green, strength: 2.0
//                    )
//                ))
//
//
//                let entityA = Entity()
//                entityA.components.set([modelComponent, collisionComponent, inputTargetComponent, hoverEffectComponent])
//                content.add(entityA)
                
                if let scene = try? await Entity(named: "Cell", in: realityKitContentBundle) {
                    let group = scene.children[0].children.first {
                        $0.name == "Group"
                    }
                    if let group {
                        for child in group.children {
                            print(child.name)
                            if child.name == "reticuloEndoplasmaticoRugoso" {
                                let hoverComponent = HoverEffectComponent()
                                child.components.set(hoverComponent)
                            }
                        }
                    }
                    
//                    let inputTargetComponent = InputTargetComponent()
//                    let hoverComponent = HoverEffectComponent(.spotlight(
//                        HoverEffectComponent.SpotlightHoverEffectStyle(
//                            color: .green, strength: 2.0
//                        )
//                    ))
//                    scene.components.set([inputTargetComponent, hoverComponent])
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
