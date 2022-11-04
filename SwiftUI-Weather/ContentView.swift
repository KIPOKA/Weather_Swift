//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by LK Katabe on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroudView(isNight: $isNight)
            
            VStack{
                CityTextView(cityName: "Lubumbashi, FBM")
                MainWeatherView(imageName: isNight ? "moon.stars.fill": "sun.max.fill", temperature: isNight ? 65 : 78)
                
                .padding(.bottom, 50)
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "Tue", imageName: isNight ? "moon.stars.fill" : "cloud.sun", temperature: 75)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.sun.bolt", temperature: 70)
                    WeatherDayView(dayOfWeek: "Thu", imageName: "sun.max.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "sun.haze.fill", temperature: 77)
                    WeatherDayView(dayOfWeek: "Sat", imageName: "cloud.sun", temperature: 75)
                    WeatherDayView(dayOfWeek: "Sun", imageName: "sunrise.fill", temperature: 65)
                }
                Spacer()
               
                    Button{
                        isNight.toggle()
                        print("Tapped")
                    }label: {
                        ButtomTextView(title: "Change Day Time", textColor: .green, backgroudColorText: .white)                    }
                    Spacer()
            }
        }
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View{
    var dayOfWeek: String
    var imageName:String
    var temperature: Int
    var body: some View{
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 22, weight: .medium, design: .default))
                .foregroundColor(.green)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 30, height: 30)
            Text("\(temperature)°")
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
struct BackgroudView: View{
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ isNight ? .black: .blue,  isNight ? .gray : .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View{
    var cityName: String
    var body: some View{
        Text("Pretoria, PTA")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherView: View{
    var imageName: String
    var temperature: Int
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 100, height: 90)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
                
        }
    }
}
