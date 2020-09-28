//
//  ContentView.swift
//  Calculator
//
//  Created by Wojciech Kulas on 27/09/2020.
//

import SwiftUI

struct ContentView: View {
    @State var currentValue: String = "0"
    @State var remmeberedValue: Double?
    @State var logicMode: SpecialButtonType? = nil
    @State var remeberedState: SpecialButtonType? = nil
        
    var body: some View {
        VStack {
            
            Label("\(currentValue)", image: "")
                .frame(width: 260, height: 45, alignment: .trailing)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10.0))
                .background(Color.secondary)
                .foregroundColor(Color.primary)
                .cornerRadius(10.0)
                .padding()
            
            Spacer()
            
            HStack {
                createNumberButton(countValue: 1)
                createNumberButton(countValue: 2)
                createNumberButton(countValue: 3)
            }
            HStack {
                createNumberButton(countValue: 4)
                createNumberButton(countValue: 5)
                createNumberButton(countValue: 6)
            }
            HStack {
                createNumberButton(countValue: 7)
                createNumberButton(countValue: 8)
                createNumberButton(countValue: 9)
            }
            HStack {
                createSpecialButton(specialButtonModel: .addition)
                createNumberButton(countValue: 0)
                createSpecialButton(specialButtonModel: .substraction)
            }
            HStack {
                createSpecialButton(specialButtonModel: .multiplication)
                createSpecialButton(specialButtonModel: .equal)
                createSpecialButton(specialButtonModel: .division)
            }
            
            Spacer()
        }
    }
}


extension ContentView {
    func createNumberButton(countValue: Int) -> some View {
        return NumberButtonView(buttonModel: NumberButtonModel(countValue: countValue), currentValue: $currentValue)
    }
    
    func createSpecialButton(specialButtonModel: SpecialButtonType) -> some View {
        return SpecialButtonView(specialButtonModel: specialButtonModel, changedState: $logicMode, currentValue: $currentValue, rememberedValue: $remmeberedValue, rememmberedState: $remeberedState)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
