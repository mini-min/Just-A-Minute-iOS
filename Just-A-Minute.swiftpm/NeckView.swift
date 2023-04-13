//
//  NeckView.swift
//  Just-A-Minute
//
//  Created by 민 on 2023/04/12.
//

import SwiftUI
import RealityKit

struct NeckView: View {
    var body: some View {
        return ARContainer()
            .edgesIgnoringSafeArea(.all)
            .navigationBarBackButtonHidden()
            .overlay {
                VStack {
                    Spacer()
                    NavigationLink(destination: EyeView()) {
                        Text("Next exercise")
                            .font(.headline)
                            .bold()
                            .padding()
                            .frame(width: 200)
                            .background(Color.green)
                            .foregroundColor(Color(uiColor: UIColor.systemBackground))
                            .cornerRadius(15)
                    }
                    .padding(.bottom, 40)
                    .padding(.horizontal)
                }
            }
    }
    
}

struct ARContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        arView.cameraMode = .ar
        
        // Notice Text
        let noticeText: MeshResource = .generateText("Turn the camera and find the hidden word 'WWDC'",
                                                     font: .boldSystemFont(ofSize: 18),
                                                     alignment: .center)
        let noticematerial = SimpleMaterial(color: .black, isMetallic: false)
        let noticeEntity = ModelEntity(mesh: noticeText, materials: [noticematerial])
        let noticeAnchor = AnchorEntity(world: [-250, 0, -500])
        noticeAnchor.addChild(noticeEntity)
        arView.scene.anchors.append(noticeAnchor)
        
        // First W Text
        let firstWText: MeshResource = .generateText("W",
                                                     font: .boldSystemFont(ofSize: 10))
        let findMaterial = SimpleMaterial(color: .green, isMetallic: true)
        let firstWEntity = ModelEntity(mesh: firstWText, materials: [findMaterial])
        let firstWAnchor = AnchorEntity(world: [0, 150, -100])
        firstWAnchor.addChild(firstWEntity)
        arView.scene.anchors.append(firstWAnchor)
        
        // Second W Text
        let secondWText: MeshResource = .generateText("W",
                                                      font: .boldSystemFont(ofSize: 10))
        let secondWEntity = ModelEntity(mesh: secondWText, materials: [findMaterial])
        let secondWAnchor = AnchorEntity(world: [0, -200, -50])
        secondWAnchor.addChild(secondWEntity)
        arView.scene.anchors.append(secondWAnchor)
        
        // D Text
        let dText: MeshResource = .generateText("D",
                                                font: .boldSystemFont(ofSize: 10))
        let dEntity = ModelEntity(mesh: dText, materials: [findMaterial])
        let dAnchor = AnchorEntity(world: [-200, 0, -50])
        dAnchor.addChild(dEntity)
        arView.scene.anchors.append(dAnchor)
        
        // C Text
        let cText: MeshResource = .generateText("C",
                                                font: .boldSystemFont(ofSize: 10))
        let cEntity = ModelEntity(mesh: cText, materials: [findMaterial])
        let cAnchor = AnchorEntity(world: [200, 0, -50])
        cAnchor.addChild(cEntity)
        arView.scene.anchors.append(cAnchor)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) { }
}
