//
//  FancyScoreView.swift
//  EnvironmentObject
//
//  Created by Artyom Romanchuk on 06.01.2021.
//

import SwiftUI

struct FancyScoreView: View {
    //@Binding var score: Int
    @EnvironmentObject var userSettings2: UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSettings2.score)")  //Text("\(self.score)")
            Button("Increment Score") {
                //self.score += 1
                self.userSettings2.score += 1
            }.padding().background(Color.green)
        }.padding().background(Color.orange)
        
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        //ObservedObject FancyScoreView(score: .constant(0))
        //EnvironmentObject
        FancyScoreView()
    }
}
