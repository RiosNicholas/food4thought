//
//  HabitButton.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import SwiftUI

struct HabitButton: View {
    @State var chainNum: Int = 0
    @State var habit: String
    @State var emoji: String
    var goodHabit: Bool
    // var backgroundColor : Color
    var textColor: Color
    var gradientColor: [Color]
    
    var body: some View {
        Button(action: {
            // Clicking the button will increment the habit chain
            chainNum += 1
        }) {
            label: do {
                // Displays State vars habit and chainNum
                HStack{
                    VStack {
                        // Writes the habit below a representative icon
                        Text("\(emoji)")
                            .font(.largeTitle)
                        Text("\(habit)")
                            .font(.body)
                            .fontWeight(.light)
                    }
                    Divider()
                        .frame(width: 1, height: 50)
                        .background(textColor)
                    Text("\(chainNum)")
                        .font(.largeTitle)
                }
                .shadow(color: Color.black, radius: 5, y:3) // Adds a dropshadow to the contents of the button
                .padding(.horizontal, 20) // Adds horizontal padding of 20 points
                .padding(.vertical, 10) // Adds vertical padding of 10 points
                //.background(backgroundColor)
                .background(LinearGradient(
                    gradient: Gradient(colors: gradientColor),
                    startPoint: .bottom,
                    endPoint: .top)
                )
                .foregroundColor(textColor)
                .cornerRadius(10)
            }

        }
        .shadow(color: Color.black.opacity(0.6), radius: 4, y: 5) // Adds a dropshadow to the outside of the button
        .contextMenu {
            // Adding functionality to reset the habit chain
            Button("Reset chain") {
                chainNum = 0
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct HabitButton_Previews: PreviewProvider {
    static var previews: some View {
        //HabitButton(habit: "Drink water", icon: "💧",backgroundColor: .green, textColor: .white)
        HabitButton(habit: "Exercise", emoji: "💪", goodHabit: true, textColor: .white, gradientColor: [.green, .white])
    }
}
