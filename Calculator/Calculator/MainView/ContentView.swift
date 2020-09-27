//
//  ContentView.swift
//  Calculator
//
//  Created by Wojciech Kulas on 27/09/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
    
            
            Label("0", image: "")
                .frame(width: 260, height: 45, alignment: .trailing)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10.0))
                .background(Color.secondary)
                .foregroundColor(Color.primary)
                .cornerRadius(10.0)
                .padding()
            
            Spacer()
            
            HStack {
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 1))
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 2))
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 3))
            }
            HStack {
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 4))
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 5))
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 6))
            }
            HStack {
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 7))
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 8))
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 9))
            }
            HStack {
                SpecialButtonView(specialButtonModel: SpecialButtonModel(specialButtonType: .addition))
                NumberButtonView(buttonModel: NumberButtonModel(countValue: 0))
                SpecialButtonView(specialButtonModel: SpecialButtonModel(specialButtonType: .substraction))
            }
            HStack {
                SpecialButtonView(specialButtonModel: SpecialButtonModel(specialButtonType: .division))
                SpecialButtonView(specialButtonModel: SpecialButtonModel(specialButtonType: .equal))
                SpecialButtonView(specialButtonModel: SpecialButtonModel(specialButtonType: .multiplication))
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
