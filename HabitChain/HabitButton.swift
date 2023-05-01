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
    var textColor: Color
    var gradientColor: [Color]
    
    var body: some View {
        Button(action: {
            chainNum += 1
        }) {
            ZStack {
                // Displays State vars habit and chainNum
                HStack {
                    VStack {
                        // Writes the habit below a representative icon
                        Text("\(emoji)")
                            .font(.largeTitle)
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                        Text("\(habit)")
                            .font(.body)
                            .fontWeight(.light)
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                    }
                    Divider()
                        .frame(width: 1, height: 50)
                        .background(textColor)
                    Text("\(chainNum)")
                        .font(.largeTitle)
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: gradientColor),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
                .foregroundColor(textColor)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 5, y: 3)
            }
        }
        .shadow(color: Color.black.opacity(0.6), radius: 4, y: 5)
        .contextMenu {
            Button("Reset chain") {
                chainNum = 0
            }
        }
        .frame(width: 150, height: 100) // Fixed size for the ZStack
    }
}


struct HabitButton_Previews: PreviewProvider {
    static var previews: some View {
        //HabitButton(habit: "Drink water", icon: "💧",backgroundColor: .green, textColor: .white)
        HabitButton(habit: "Exercise", emoji: "💪", goodHabit: true, textColor: .white, gradientColor: [.green, .white])
    }
}
