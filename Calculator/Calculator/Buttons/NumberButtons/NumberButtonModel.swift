//
//  ButtonModel.swift
//  Calculator
//
//  Created by Wojciech Kulas on 27/09/2020.
//

import Foundation
import Combine

class NumberButtonModel: ObservableObject {
    @Published var numberValue: Int
    
    init(countValue: Int) {
        self.numberValue = countValue
    }
}
