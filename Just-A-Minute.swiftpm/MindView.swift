//
//  MindView.swift
//  Just-A-Minute
//
//  Created by 민 on 2023/04/12.
//

import SwiftUI
import AVKit

struct MindView: View {
    
    @State var start = false
    @State var to: CGFloat = 0
    @State var count = 0
    @State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var playerStatus = 1
    
    var body: some View {
        let soundManager = SoundManager.instance
        
        Image("mindViewBackground")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .opacity(0.8)
            .navigationBarBackButtonHidden()
            .overlay(content: {
                
                VStack {
                    VStack {
                        ZStack {
                            Circle()
                                .trim(from: 0, to: 1)
                                .stroke(Color.white.opacity(0.8), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                                .frame(width: 500, height: 500)
                            
                            Circle()
                                .trim(from: 0, to: self.to)
                                .stroke(Color.green.opacity(0.8), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                                .frame(width: 500, height: 500)
                                .rotationEffect(.init(degrees: -90))
                            
                            VStack {
                                Text("Relax and focus on music")
                                    .font(.system(size: 28))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Spacer().frame(height: 20)
                                Text("\(60-self.count)")
                                    .font(.system(size: 100))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white.opacity(0.8))
                            }
                        }
                        
                        Spacer().frame(height: 100)
                        HStack(spacing: 50) {
                            Button(action: {
                                if self.count == 60 {
                                    self.count = 0
                                    withAnimation(.default) {
                                        self.to = 0
                                    }
                                }
                                self.start.toggle()
                                playerStatus % 2 == 1 ?                                 soundManager.playSound(sound: .meditation) : soundManager.stopSound()
                                playerStatus += 1
                            }) {
                                Text(self.start ? "Pause" : "Start")
                                    .font(.headline)
                                    .bold()
                                    .padding()
                                    .frame(width: 200)
                                    .background(Color.white)
                                    .foregroundColor(Color(uiColor: .black))
                                    .cornerRadius(15)
                            }
                            
                            NavigationLink(destination: LastView()) {
                                Text("Finish")
                                    .font(.headline)
                                    .bold()
                                    .padding()
                                    .frame(width: 200)
                                    .background(Color.green)
                                    .foregroundColor(Color(uiColor: UIColor.systemBackground))
                                    .cornerRadius(15)
                            }
                        }
                    }
                    
                    .onReceive(self.time) { (_) in
                        if self.start{
                            if self.count != 60 {
                                self.count += 1
                                withAnimation(.default) {
                                    self.to = CGFloat(self.count) / 60
                                }
                            }
                            else {
                                withAnimation(.default) {
                                    self.to = 0
                                    playerStatus += 1
                                    soundManager.stopSound()
                                }
                                self.start.toggle()
                            }
                        }
                    }
                }
            })
    }
}

class SoundManager {
    static let instance = SoundManager()
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case meditation = "meditationSound"
    }
    
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func stopSound() {
        player?.stop()
    }
}

