//
//  ButtonColor.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import SwiftUI

struct ButtonColor: View {
    var habit: HabitData
    var chainNum: Int
    var gradientColor: [Color]
    var textColor: Color {
        return goodHabit ? Color.white : Color.black
    }
    var body: some View {
        let gradientColor: [Color]
        
        if chainNum == 0 {
            gradientColor = [.white]
        } else if habit.goodHabit {
            let greenDepth = min(Double(chainNum) / 100, 1.0)
            gradientColor = [Color(red: 0.0, green: greenDepth, blue: 0.0), .white]
        } else {
            let redDepth = min(Double(chainNum) / 100, 1.0)
            gradientColor = [Color(red: redDepth, green: 0.0, blue: 0.0), .white]
        }
        
        return LinearGradient(
            gradient: Gradient(colors: gradientColor),
            startPoint: .bottom,
            endPoint: .top
        )
    }
}

struct ButtonColor_Previews: PreviewProvider {
    static var previews: some View {
        ButtonColor()
    }
}
