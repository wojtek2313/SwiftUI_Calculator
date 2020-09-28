//
//  ButtonView.swift
//  Calculator
//
//  Created by Wojciech Kulas on 27/09/2020.
//

import SwiftUI

struct NumberButtonView: View {
    
    @ObservedObject var buttonModel: NumberButtonModel
    @Binding var currentValue: String
    
    var body: some View {
        Button(action: {
            if currentValue != "0" {
                currentValue += String(buttonModel.numberValue)
            } else {
                currentValue = String(buttonModel.numberValue)
            }
        }) {
            ZStack {
                Color.secondary
                Text(String(buttonModel.numberValue))
                    .foregroundColor(.primary)
            }
        }
        .cornerRadius(10.0)
        .frame(width: 80, height: 45, alignment: .center)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NumberButtonView(buttonModel: .init(countValue: 0), currentValue: .constant("1"))
    }
}
