//
//  ContentView.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/2/23.
//

import SwiftUI

var tapCount = 0

let soundArray = ["snare", "bassDrum", "hiHat", "crash", "ride", "toilet"]

var soundTitle = "Assigned Sound"

func randomizer() {
    soundTitle =
    soundArray.randomElement() ?? "\(soundTitle)"
}

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(.red, lineWidth: 20)
                .background(Circle().fill(.orange))
                .frame(width: 150, height: 150)
            
            Button("Button")
            { tapCount += 1
                if tapCount == .random(in: 5 ... 10 )
                
                
                 {
                    randomizer()
                    
                }
                
                
                print("\(soundTitle)")
                print("\(tapCount)")
                
                
            }
            .padding()
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
