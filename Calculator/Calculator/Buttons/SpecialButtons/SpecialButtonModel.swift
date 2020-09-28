//
//  SpecialButtonModel.swift
//  Calculator
//
//  Created by Wojciech Kulas on 27/09/2020.
//

import Foundation
import Combine

enum SpecialButtonType: Int {
    case addition, substraction, multiplication, division, equal
    
    func setTitle() -> String {
        switch self {
        case .addition:
            return "+"
        case .division:
            return "/"
        case .multiplication:
            return "*"
        case .substraction:
            return "-"
        case .equal:
            return "="
        }
    }
}
