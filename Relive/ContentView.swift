//
//  ContentView.swift
//  Relive
//
//  Created by Prakhar Parakh on 16/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var player: [String] = ["Messi","ronaldo"]
    var body: some View {
        ArViewrep()
            .ignoresSafeArea()
            .overlay(alignment : .bottom){
                ScrollView(.horizontal){
                    HStack{
                        Button{
                            ArManager.shared.actionStream.send(.removeall)
                        }label:{
                            Image(systemName: "trash")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30,height:30)
                                .padding()
                                .background(.regularMaterial)

                        }
                        ForEach(player , id:\.self){ pla in
                            Button{
                                ArManager.shared.actionStream.send(.placevideo(url: Bundle.main.url(forResource: "\(pla)", withExtension: "mp4")!))
                                    
                            }label:{
                                Image("\(pla)-img")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:60,height: 60)
                                    .padding()
                            }
                        }
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
