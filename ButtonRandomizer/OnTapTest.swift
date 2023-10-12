//
//  OnTapTest.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/2/23.
//

import SwiftUI
import AVFoundation

struct OnTapTest: View {
    
    let vm = PlayViewModel()
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        VStack {
            Circle()
                .onTapGesture {
                    vm.playSnare()
                }
            
            Text("SNARE")
                .padding(40)
                .background {
                    Circle()
                        .stroke()
                        }
                .onTapGesture {
                    vm.playSnare()
                }
        }
    }
}

struct OnTapTest_Previews: PreviewProvider {
    static var previews: some View {
        OnTapTest()
    }
}
