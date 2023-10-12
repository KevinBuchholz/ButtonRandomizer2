//
//  DrumKitRandomizer.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/4/23.
//

import SwiftUI
import AVFoundation


struct DrumKitRandomizer: View {
    
    let vm = TrollViewModel()
    
    var body: some View {
        ZStack {
            //BASS DRUM
            VStack {
                Spacer()
                BassDrumView()
            }
            //Crash Cymbals
            VStack{
                VStack{
                    Spacer()
                    HStack {
                        Spacer()
                        Crash1View()
                        Spacer()
                        Crash2View()
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                // HIHAT RACK TOMS RIDE
                VStack{
                    HStack {
                        Spacer()
                        HiHatView()
                        Spacer()
                        Tom1View()
                        Spacer()
                        Tom2View()
                        Spacer()
                        RideView()
                        Spacer()
                    }
                    Spacer()
                }
                //SNARE AND FLOOR TOM
                HStack {
                    Spacer()
                    SnareDrumView()
                    Spacer()
                    Spacer()
                    FloorTomView()
                    Spacer()
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct DrumKitRandomizer_Previews: PreviewProvider {
    static var previews: some View {
        DrumKitRandomizer()
    }
}
