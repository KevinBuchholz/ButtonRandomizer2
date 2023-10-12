//
//  CircleButtonTest.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/2/23.
//

import SwiftUI
import AVKit

struct CircleButtonTest: View {
    
    let vm = PlayViewModel()
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        VStack {
            Text("Click Me! Click Me! Click Me!")
                .allowsHitTesting(false) // allow taps exactly on the text to make it through to the button
                .padding()
                .background {
                    Button {
                        // button action
                        print("Tapped")
                        vm.playBass()
                        
                    } label: {
                        Circle()
                            .foregroundColor(.green)
                            .scaledToFill()
                    }
                    .contentShape(Circle()) // don't allow taps outside the circle
                }
            Spacer()
            
            Text("Click Me! Click Me! Click Me!")
                .allowsHitTesting(false) // allow taps exactly on the text to make it through to the button
                .padding()
                .background {
                    Button {
                        // button action
                        print("Tapped")
                        vm.playSnare()
                        
                    } label: {
                        Circle()
                            .foregroundColor(.green)
                            .scaledToFill()
                    }
                    .contentShape(Circle()) // don't allow taps outside the circle
                }
        }
    }
}

struct CircleButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonTest()
    }
}
