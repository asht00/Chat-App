//
//  ContentView.swift
//  Bullseye
//
//  Created by Ashima T on 14/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    
    @State private var sliderValue = 50.0
    
    @State private var game = Game()
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                InstructionsView(game: $game)
                HStack {
                    Text("1")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                        .font(.body)
                    
                        
                    Text("100")
                        .bold()
                        .font(.body)
                        .foregroundColor(Color("TextColor"))
                }
                .padding()
                Button(action: {
                    print("Hello SwiftUI")
                    self.alertIsVisible = true
                }) {
                    Text("Hit Me".uppercased())
                        .bold()
                        .font(.title3)
                }
                    .padding(20.0)
                    .background(
                        ZStack {
                            Color("ButtonColor")
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                        })
                    .foregroundColor(.white)
                    .cornerRadius(21.0)
                    .alert(isPresented:   $alertIsVisible, content: {
                        let roundedValue = Int(self.sliderValue.rounded())
                        return Alert(title: Text("Hello There!"), message: Text("The slider value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
                    })
                
            }
            
        }
        
    }
}
struct InstructionsView: View {
    @Binding var game: Game
    
    var body: some View{
        VStack{
            InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
            .padding(.leading, 30.0)
            .padding(.trailing, 30.0)
            BigNumberText(text: String(game.target))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
