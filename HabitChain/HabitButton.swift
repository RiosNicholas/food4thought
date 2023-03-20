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
    @State var icon: String
    var backgroundColor : Color
    var textColor: Color
    
    
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
                        Text("\(icon)")
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
                .padding(10)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .cornerRadius(10)
            }

        }
        .shadow(color: Color.black, radius: 4, y: 5)
        .contextMenu {
            // Adding functionality to reset the habit chain
            Button("Reset chain") {
                chainNum = 0
            }
        }
    }
}

struct HabitButton_Previews: PreviewProvider {
    static var previews: some View {
        HabitButton(habit: "Drink water", icon: "💧",backgroundColor: .green, textColor: .white)
    }
}
