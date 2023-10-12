//
//  DrumLayout.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/2/23.
//

import SwiftUI
import AVKit

struct DrumLayout: View {
    
    let vm = PlayViewModel()
    @State var audioPlayer: AVAudioPlayer!
    var tapCount = 0
    
    var body: some View {
        ZStack {
            //BASS DRUM
            VStack {
                Spacer()
                Text("BASS")
                    .allowsHitTesting(false)
//                    .padding()
                    .background {
                        Button {
//                                vm.playBass()
                            
                                
                        } label: {
                            Circle()
                                .stroke(.black, lineWidth: 5)
                                .frame(width: 200, height: 200)
                                .simultaneousGesture(DragGesture(minimumDistance: 0)
                                    .onChanged({_ in
                                        vm.playBass()
                                    }))
//                                .onTapGesture {
//                                    vm.playBass()
//                                }
                               
                            
                        }
                        .contentShape(Circle())
                        .allowsHitTesting(false)
                    }
                
            }
            //Crash Cymbals
            VStack{
                VStack{
                    Spacer()
                    HStack {
                        Spacer()
                        Text("CRASH")
                            .allowsHitTesting(false)
                        //                    .padding()
                            .background {
                                Button {
                                    vm.playCrash1()
                                } label: {
                                    Circle()
                                        .stroke(.black, lineWidth: 5)
                                        .frame(width: 150, height: 150)
                                }
                                .contentShape(Circle())
                            }
                        Spacer()
                        
                        Text("CRASH")
                            .allowsHitTesting(false)
                            .background {
                                Button {
                                    vm.playCrash2()
                                } label: {
                                    Circle()
                                        .stroke(.black, lineWidth: 5)
                                        .frame(width: 150, height: 150)
                                }
                                .contentShape(Circle())
                            }
                        Spacer()
                        
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                VStack{
                    HStack {
                        Spacer()
                        Text("HI HAT")
                            .allowsHitTesting(false)
                            .background {
                                Button {
                                    vm.playHiHat()
                                } label: {
                                    Circle()
                                        .stroke(.black, lineWidth: 5)
                                        .frame(width: 150, height: 150)
                                }
                                .contentShape(Circle())
                            }
                        
                        Spacer()
                        
                        Text("TOM")
                            .allowsHitTesting(false)
                            .background {
                                Button {
                                    vm.playTom1()
                                } label: {
                                    Circle()
                                        .stroke(.black, lineWidth: 5)
                                        .frame(width: 150, height: 150)
                                }
                                .contentShape(Circle())
                            }
                        
                        Spacer()
                        
                        Text("TOM")
                            .allowsHitTesting(false)
                            .background {
                                Button {
                                    vm.playTom2()
                                } label: {
                                    Circle()
                                        .stroke(.black, lineWidth: 5)
                                        .frame(width: 150, height: 150)
                                }
                                .contentShape(Circle())
                            }
                        
                        Spacer()
                        
                        Text("RIDE")
                            .allowsHitTesting(false)
                            .background {
                                Button {
                                    vm.playRide()
                                } label: {
                                    Circle()
                                        .stroke(.black, lineWidth: 5)
                                        .frame(width: 150, height: 150)
                                }
                                .contentShape(Circle())
                            }
                        Spacer()
                        
                    }
                    Spacer()
                }
                //SNARE AND FLOOR TOM
                HStack {
                    Spacer()
                    Text("SNARE")
                        .allowsHitTesting(false)
                        .background {
                            Button {
                                vm.playSnare()
                            } label: {
                                Circle()
                                    .stroke(.black, lineWidth: 5)
                                    .frame(width: 150, height: 150)
                            }
                            .contentShape(Circle())
                        }
                    
                    Spacer()
                    Spacer()
                    Text("TOM")
                        .allowsHitTesting(false)
                        .background {
                            Button {
                                vm.playFloorTom()
                            } label: {
                                Circle()
                                    .stroke(.black, lineWidth: 5)
                                    .frame(width: 150, height: 150)
                            }
                            .contentShape(Circle())
                        }
                    Spacer()
                }
            }
            Spacer()
        }
        .padding()
    }
}


struct DrumLayout_Previews: PreviewProvider {
    static var previews: some View {
        DrumLayout()
    }
}
