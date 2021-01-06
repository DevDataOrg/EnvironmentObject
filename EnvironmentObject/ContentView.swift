//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by Artyom Romanchuk on 06.01.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack{
            Text("\(self.userSettings.score)")
                .font(.largeTitle)
            Button("Increment Score") {
                
                self.userSettings.score += 1
            }
            FancyScoreView(score: self.$userSettings.score)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
