//
//  LastView.swift
//  Just-A-Minute
//
//  Created by 민 on 2023/04/12.
//

import SwiftUI

struct LastView: View {
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 50)
                VStack(alignment: .center) {
                    Text("Great job!")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom)
                    
                    Text("Nothing is stronger than habit.\n")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.green)
                                        
                    Text("I'm sure this playground app will help your throat, eyes, and mind health. It's important to write good code for developers, but what's more important than that is your health. Taking a short break in your busy daily life will help your health.\n")
                    
                    Text("ContentView uses ArView and RealityKit to implement face recognition and fun neck stretching functions. In EyeView, we implemented moving objects using Apple's default animation. Finally, in MindView, AVkit for sound playback was used, and an effective meditation program was developed by implementing a timer function. So, I studied to develop this playground app, which is expected to help my iOS development skills in my future.")
                }
                .lineSpacing(15)
                .frame(maxWidth: 650)
                .padding()
                Spacer().frame(height: 100)
            }
            .navigationBarBackButtonHidden()
        }
    }
}
