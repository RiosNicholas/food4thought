//
//  DataModel.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import UIKit
import SwiftUI

struct HabitData: Hashable {
    var habit: String
    var emoji: String
    var goodHabit: Bool
    var textColor: Color {
        return goodHabit ? Color.white : Color.black
    }
    var gradientColor: [Color] {
        return goodHabit ? [.green, .white] : [.red, .white]
    }
}

class DataModel: NSObject {
    static let habits: [HabitData] =  [
        // HabitData(habit: "Late Bedtime", emoji: "😴", goodHabit: false, textColor: Color.black, gradientColor: [Color.red, Color.white]),
        HabitData(habit: "Late Bedtime", emoji: "😴", goodHabit: false),
        HabitData(habit: "Sugary Foods", emoji: "🍩", goodHabit: false),
        HabitData(habit: "Reading", emoji: "📖", goodHabit: true),
        HabitData(habit: "Journaling", emoji: "📝", goodHabit: false),
        HabitData(habit: "Stretching", emoji: "🙆‍♂️", goodHabit: true),
        HabitData(habit: "Exercise", emoji: "🏋️", goodHabit: true)
    ]
}

