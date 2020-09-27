//
//  SpecialButtonView.swift
//  Calculator
//
//  Created by Wojciech Kulas on 27/09/2020.
//

import SwiftUI

struct SpecialButtonView: View {
    
    @ObservedObject var specialButtonModel: SpecialButtonModel
    
    var body: some View {
        ZStack {
            Color.secondary
            Text(String(specialButtonModel.specialButtonType.setTitle()))
                .foregroundColor(.primary)
        }
        .cornerRadius(10.0)
        .frame(width: 80, height: 45, alignment: .center)
    }
}

struct SpecialButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialButtonView(specialButtonModel: .init(specialButtonType: .addition))
    }
}
