//
//  BassDrumView.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/3/23.
//

import SwiftUI

struct BassDrumView: View {
    
    let vm = PlayViewModel()
    
    var body: some View {
        ZStack{

            Circle()
                .strokeBorder(.black, lineWidth: 5)
                .background(Circle().fill(.white))
                .frame(width: 200, height: 200)
                .simultaneousGesture(DragGesture(minimumDistance: 0)
                    .onChanged({_ in
                        vm.tapCount += 1
                        if vm.tapCount >= Int.random(in: 7...15)  {
                            vm.soundTroll()
                        } else {

                            print(vm.tapCount)
                            vm.playBass()
                        }
                    }))
            
            Text("BASS")
        }
    }
}

struct BassDrumView_Previews: PreviewProvider {
    static var previews: some View {
        BassDrumView()
    }
}
