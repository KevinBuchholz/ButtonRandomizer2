//
//  CircleOnTap.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/3/23.
//

import SwiftUI
import AVFoundation

struct CircleOnTap: View {
    
    let vm = PlayViewModel()
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        VStack{
            ZStack{
    
                Circle()
                    .strokeBorder(.black, lineWidth: 5)
                    .background(Circle().fill(.white))
                    .frame(width: 150, height: 150)
                    .simultaneousGesture(DragGesture(minimumDistance: 0)
                        .onChanged({_ in
                            vm.playBass()
                        }))
                
                Text("BASS")
            }
            
            Circle()
                .simultaneousGesture(DragGesture(minimumDistance: 0)
                    .onChanged({_ in
                        vm.playSnare()
                    }))
            
            Circle()
                .simultaneousGesture(DragGesture(minimumDistance: 0)
                    .onChanged({_ in
                        vm.playHiHat()
                    }))
        }
    }
}

struct CircleOnTap_Previews: PreviewProvider {
    static var previews: some View {
        CircleOnTap()
    }
}
