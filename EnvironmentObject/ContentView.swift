//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by Artyom Romanchuk on 06.01.2021.
//

import SwiftUI

struct ContentView: View {
    //@ObservedObject var userSettings1 = UserSettings()
    @EnvironmentObject var userSettings2: UserSettings
    
    var body: some View {
        VStack{
            Text("\(self.userSettings2.score)")
                .font(.largeTitle)
            Button("Increment Score") {
                
                self.userSettings2.score += 1
            }
            //ObservedObject ----->
            //FancyScoreView(score: self.$userSettings2.score)
            //EnvironmentObject ----->
            FancyScoreView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
