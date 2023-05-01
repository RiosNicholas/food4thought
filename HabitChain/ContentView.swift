//
//  ContentView.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    private let numberColumns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    private let fixedColumns = [
        GridItem(.fixed(150)),
        GridItem(.fixed(150))
    ]
    var body: some View {
        VStack(spacing: 15){
            // Displaying the HabitChain logo
            Image("habit-chain-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            // Displaying the image of a chain below the logo
            Image("chain-cartoon")
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 20.0)
            
            // Displaying the habit buttons in an adaptive grid layout
            LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                ForEach(DataModel.habits, id: \.self) { habitData in
                    ZStack {
                        HabitButton(habit: habitData.habit, emoji: habitData.emoji, goodHabit: habitData.goodHabit, textColor: habitData.textColor, gradientColor: habitData.gradientColor)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
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
