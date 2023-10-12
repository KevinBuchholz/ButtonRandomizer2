//
//  Crash1View.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/3/23.
//

import SwiftUI

struct Crash1View: View {
    let vm = PlayViewModel()
    
    var body: some View {
        ZStack{

            Circle()
                .strokeBorder(.black, lineWidth: 5)
                .background(Circle().fill(.white))
                .frame(width: 150, height: 150)
                .simultaneousGesture(DragGesture(minimumDistance: 0)
                    .onChanged({_ in
                        vm.tapCount += 1
                        if vm.tapCount >= Int.random(in: 7...15)  {
                            vm.soundTroll()
                        } else {

                            print(vm.tapCount)
                            vm.playCrash1()
                        }
                    }))
            
            Text("CRASH")
        }
    }
}

struct Crash1View_Previews: PreviewProvider {
    static var previews: some View {
        Crash1View()
    }
}
