//
//  SpecialButtonView.swift
//  Calculator
//
//  Created by Wojciech Kulas on 27/09/2020.
//

import SwiftUI

struct SpecialButtonView: View {
    
    var specialButtonModel: SpecialButtonType
    
    @Binding var changedState: SpecialButtonType?
    @Binding var currentValue: String
    @Binding var rememberedValue: Double?
    @Binding var rememmberedState: SpecialButtonType?
    
    var body: some View {
        Button(action: {
            if specialButtonModel.rawValue == 4, rememmberedState != nil {
                if let current = Double(currentValue) {
                    let calculatedValue = calculate(remmemberedValue: Double(rememberedValue!), currentValue: current)
                    changedState = nil
                    rememberedValue = calculatedValue
                    currentValue = "\(calculatedValue)"
                }
            } else {
                rememberedValue = Double(currentValue)
                currentValue = "0"
                changedState = specialButtonModel
                rememmberedState = changedState
            }
        }, label: {
            ZStack {
                Color.secondary
                Text(String(specialButtonModel.setTitle()))
                    .foregroundColor(.primary)
            }
            .cornerRadius(10.0)
            .frame(width: 80, height: 45, alignment: .center)
        })
        
    }
    
    func calculate(remmemberedValue: Double, currentValue: Double) -> Double {
        switch rememmberedState {
        case .addition:
            return remmemberedValue + currentValue
        case .division:
            return remmemberedValue / currentValue
        case .substraction:
            return remmemberedValue - currentValue
        case .multiplication:
            return remmemberedValue * currentValue
        case .equal:
            return 0.0
        default:
            return 0.0
        }
    }
}

struct SpecialButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialButtonView(specialButtonModel: .addition, changedState: .constant(.addition), currentValue: .constant("1"), rememberedValue: .constant(nil), rememmberedState: .constant(nil))
    }
}
