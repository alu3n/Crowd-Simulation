//
//  ContentView.swift
//  Application
//
//  Created by Vojtěch Pröschl on 14.01.2025.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    let scene: SCNScene
    let cameraNode: SCNNode
    
    var body: some View {
        SceneView(
                scene: scene,
                pointOfView: cameraNode,
                options: []
        )
        
    }
    
    init() {
        scene = SCNScene()
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 5, z: 10) // Adjust position to look at the cube
        cameraNode.look(at: SCNVector3(0, 0, 0)) // Make the camera look at the origin
        scene.rootNode.addChildNode(cameraNode)
        
        let cube = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let cubeNode = SCNNode(geometry: cube)
        cubeNode.position = SCNVector3(0, 0, 0) // Center of the scene
        scene.rootNode.addChildNode(cubeNode)
        
        // Create a light source and set its type and position
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni // Omni-directional light
        lightNode.position = SCNVector3(x: 0, y: 5, z: 5) // Position above and slightly behind the cube
        scene.rootNode.addChildNode(lightNode)

    }
}

#Preview {
    ContentView()
}
