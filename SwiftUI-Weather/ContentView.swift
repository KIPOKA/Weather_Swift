//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by LK Katabe on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Lubumbashi, FBM")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 90, height: 80)
                    Text("78°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                        
                }
                .padding(.bottom, 50)
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun", temperature: 75)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.drizzle.fill", temperature: 70)
                    WeatherDayView(dayOfWeek: "Thu", imageName: "cloud.bolt.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "sun.max", temperature: 77)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun", temperature: 75)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.drizzle.fill", temperature: 70)
                    
                }
               
                    
            }
        }
        .padding()
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
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
