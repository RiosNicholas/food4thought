////
////  ButtonColor.swift
////  HabitChain
////
////  Created by Nicholas Rios on 3/20/23.
////
//
//import SwiftUI
//
//enum ButtonColor {
//    case good(chainNum: Int, gradientColor: [Color])
//    case bad(chainNum: Int, gradientColor: [Color])
//    case zero
//    
//    var gradient: [Color] {
//        switch self {
//        case .zero:
//            return [.white]
//        case .good(let chainNum, _):
//            let greenDepth = min(Double(chainNum) / 100, 1.0)
//            return [Color(red: 0.0, green: greenDepth, blue: 0.0), .white]
//        case .bad(let chainNum, _):
//            let redDepth = min(Double(chainNum) / 100, 1.0)
//            return [Color(red: redDepth, green: 0.0, blue: 0.0), .white]
//        }
//    }
//    
//    var textColor: Color {
//        switch self {
//        case .good:
//            return .white
//        default:
//            return .black
//        }
//    }
//    
//    init(chainNum: Int, gradientColor: [Color], goodHabit: Bool) {
//        if chainNum == 0 {
//            self = .zero
//        } else if goodHabit {
//            self = .good(chainNum: chainNum, gradientColor: gradientColor)
//        } else {
//            self = .bad(chainNum: chainNum, gradientColor: gradientColor)
//        }
//    }
//}
//
//
//
//struct ButtonColor_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonColor.good(chainNum: 59, gradientColor: [.green, .white])
//    }
//}
