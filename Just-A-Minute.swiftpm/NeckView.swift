//
//  NeckView.swift
//  Just-A-Minute
//
//  Created by 민 on 2023/04/12.
//

import SwiftUI
import RealityKit
import ARKit

struct NeckView: View {
    @State private var anchorEntity = AnchorEntity()

    var body: some View {
        ARViewContainer(anchorEntity: $anchorEntity)
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

struct ARViewContainer: UIViewRepresentable {
    
    @Binding var anchorEntity: AnchorEntity
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> some ARView {
        
        let arView = ARView(frame: .zero)
        
        let config = ARFaceTrackingConfiguration()
        config.maximumNumberOfTrackedFaces = 1
        
        arView.session.run(config)
        arView.session.delegate = context.coordinator
        
        return arView
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        uiView.scene.anchors.append(anchorEntity)
    }
}

class Coordinator: NSObject, ARSessionDelegate {
    
    var arViewContainer: ARViewContainer
    
    // let modelPath = Bundle.main.url(forResource: "Face", withExtension: "rcproject")
    // let model = try! Entity.load(contentsOf: modelPath!)
    // let model1 = try! Face.loadFace1()
    // let model2 = try! Face.loadFace2()
        
    init(_ control: ARViewContainer) {
        self.arViewContainer = control
    }
    
    func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        
        // arViewContainer.anchorEntity.addChild(model1)
        
    }
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        guard let faceAnchor = anchors.first as? ARFaceAnchor else { return }
        
        let mouthOpen = faceAnchor.blendShapes[.jawOpen] as! Float
        let mouthSmileLeft = faceAnchor.blendShapes[.mouthSmileLeft] as! Float
        let mouthSmileRight = faceAnchor.blendShapes[.mouthSmileRight] as! Float
        
//        if mouthOpen > 0.5 {
//            model1.notifications.action1.post()
//        }
//
//        if mouthSmileLeft > 0.5 && mouthSmileRight > 0.5 {
//            model2.notifications.action2.post()
//        }
    }
}
