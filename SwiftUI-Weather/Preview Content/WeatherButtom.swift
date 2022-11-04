//
//  WeatherButtom.swift
//  SwiftUI-Weather
//
//  Created by LK Katabe on 2022/11/04.
//

import SwiftUI

struct ButtomTextView: View{
    var title: String
    var textColor: Color
    var backgroudColorText: Color
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(textColor)
            .foregroundColor(backgroudColorText)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    
    }
}
