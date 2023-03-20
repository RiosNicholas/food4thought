//
//  DataModel.swift
//  HabitChain
//
//  Created by Nicholas Rios on 3/20/23.
//

import UIKit

struct HabitData: Hashable {
    var id: Int
    var habit: String
    var goodHabit: Bool
    var streak: Int
    var icon: String
    /*
    var color: UIColor
    var green = 1.0
    var red = 1.0
    */
}

class DataModel: NSObject {
    static let data: [HabitData] =  [
        // HabitData(id: 0, habit: "Early Bedtime", goodHabit: true, streak: 0, icon: "", color: UIColor.green),
        HabitData(id: 1, habit: "Late Bedtime", goodHabit: false, streak: 0, icon: ""),
        HabitData(id: 2, habit: "Sugary Foods", goodHabit: false, streak: 0, icon: ""),
        HabitData(id: 3, habit: "Reading", goodHabit: true, streak: 0, icon: ""),
        HabitData(id: 4, habit: "Journaling", goodHabit: true, streak: 0, icon: ""),
        HabitData(id: 5, habit: "Stretching", goodHabit: true, streak: 0, icon: ""),
        HabitData(id: 6, habit: "Exercise", goodHabit: true, streak: 0, icon: "")
    ]
}
