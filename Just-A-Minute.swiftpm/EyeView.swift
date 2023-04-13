//
//  EyeView.swift
//  Just-A-Minute
//
//  Created by 민 on 2023/04/12.
//

import SwiftUI

struct EyeView: View {
    
    @State var positionX = -250
    @State var positionY = -250
        
    var body: some View {
        
        Color(.black)
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
            .overlay {
                VStack {
                    Text("Focus your eyes on the moving circle")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 100)
                    
                    Spacer()
                    
                    Circle()
                        .fill(RadialGradient(colors: [.white, .gray.opacity(0.9)], center: .topLeading, startRadius: 40, endRadius: 90))
                        .frame(width: 70, height: 70)
                        .offset(x: CGFloat(positionX))
    
                        .animation(Animation.default.repeatForever(autoreverses: true).speed(0.2))
                    
                        .onAppear() {
                            positionX = 250
                        }
                    
                    Spacer()
                    
                    HStack(spacing: 50) {
                        Button(action: {
                        }) {
                            Text("Start")
                                .font(.headline)
                                .bold()
                                .padding()
                                .frame(width: 200)
                                .background(Color.white)
                                .foregroundColor(Color(uiColor: .black))
                                .cornerRadius(15)
                        }
                        
                        NavigationLink(destination: MindView()) {
                            Text("Next exercise")
                                .font(.headline)
                                .bold()
                                .padding()
                                .frame(width: 200)
                                .background(Color.green)
                                .foregroundColor(Color(uiColor: UIColor.systemBackground))
                                .cornerRadius(15)
                        }
                    }
                    
                    .padding(.bottom, 50)
                }
                
            }
    }
}

struct EyeView_Previews: PreviewProvider {
    static var previews: some View {
        EyeView()
    }
}
