//
//  ContentView.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15){
            Image("habit-chain-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("chain-cartoon")
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 20.0)
        
            
            VStack(spacing: 20) {
                ForEach(0..<DataModel.habits.count/2, id: \.self) { index in
                    HStack(spacing: 20) {
                        let firstIndex = index * 2
                        let secondIndex = firstIndex + 1
                        HabitButton(habit: DataModel.habits[firstIndex].habit, emoji: DataModel.habits[firstIndex].emoji, goodHabit: DataModel.habits[firstIndex].goodHabit, textColor: DataModel.habits[firstIndex].textColor, gradientColor: DataModel.habits[firstIndex].buttonColor.gradientColor)
                        HabitButton(habit: DataModel.habits[secondIndex].habit, emoji: DataModel.habits[secondIndex].emoji, goodHabit: DataModel.habits[secondIndex].goodHabit, textColor: DataModel.habits[secondIndex].textColor, gradientColor: DataModel.habits[secondIndex].buttonColor.gradientColor)
                    }
                }
            }

            Spacer() // Removes white space and pushes content to fill the entire screen
        }
        .background(Color(.systemGray2).edgesIgnoringSafeArea(.all)) // Setting the app's background
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
