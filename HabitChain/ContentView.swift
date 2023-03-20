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
        
            // HStacks hold two columns of buttons 
            HStack(spacing: 50){
                HabitButton(habit: "Drink Water", icon: "💧", backgroundColor: .green, textColor: .white)
                HabitButton(habit: "Drink Water", icon: "💧", backgroundColor: .green, textColor: .white)
            }
            
            HStack(spacing: 50){
                HabitButton(habit: "Drink Water", icon: "💧", backgroundColor: .green, textColor: .white)
                HabitButton(habit: "Drink Water", icon: "💧", backgroundColor: .green, textColor: .white)
            }
            
            
            HStack(spacing: 50){
                HabitButton(habit: "Drink Water", icon: "💧", backgroundColor: .green, textColor: .white)
                    .padding(0)
                HabitButton(habit: "Drink Water", icon: "💧", backgroundColor: .green, textColor: .white)
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
