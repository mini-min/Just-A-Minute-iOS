import SwiftUI

struct ContentView: View {
    let toolColumns = [
        GridItem(.adaptive(minimum: 160))
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Spacer().frame(height: 50)
                    VStack(alignment: .center) {
                        Text("Just A Minute")
                            .font(.largeTitle)
                            .bold()
                            .padding(.bottom)
                        
                        Text("Health care playground app for developers\n")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.green)

                        Spacer().frame(height: 20)

                        Text("Teck neck, dry eyes, and depression are representative chronic diseases of developers. In fact, these diseases are not limited to developers, but representative diseases of modern people. Therefore, the purpose of the program is to prevent these diseases not only by developers but also by all modern people through this playground app. Let's have fun with the various solutions provided by this app.")
                    }
                    .lineSpacing(15)
                    .frame(maxWidth: 650)
                    .padding()
                    Spacer().frame(height: 100)
                }
                
                Text("Provided Healthcare").font(.title)
                    .bold()
                    .padding(.bottom, 30)
                
                VStack {
                    LazyVGrid(columns: toolColumns) {
                        VStack(alignment: .center) {
                            Image("neckImage")
                                .resizable()
                                .frame(width: 60, height: 50)
                            Text("Health for neck")
                                .font(.title2).bold()
                                .foregroundColor(.green)
                                .padding(.bottom, 3)
                            Text("Neck stretching using AR technology")
                                .multilineTextAlignment(.center)
                        }
                        VStack(alignment: .center) {
                            Image("eyeImage")
                                .resizable()
                                .frame(width: 70, height: 50)
                            Text("Health for eyes")
                                .font(.title2).bold()
                                .foregroundColor(.green)
                                .padding(.bottom, 3)
                            Text("Do eye exercises while following the ball")
                                .multilineTextAlignment(.center)
                        }
                         
                        VStack(alignment: .center) {
                            Image("mindImage")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Health for mind")
                                .font(.title2).bold()
                                .foregroundColor(.green)
                                .padding(.bottom, 3)
                            Text("Meditation time with relax sound")
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                .frame(maxWidth: 600)
                Spacer().frame(height: 100)
                
                VStack {
                    NavigationLink(destination: NeckView()) {
                        Text("Let's Start")
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
        .navigationViewStyle(.stack)
    }
}
