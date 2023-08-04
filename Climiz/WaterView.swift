//
//  WaterView.swift
//  Climiz
//
//  Created by scholar on 04/08/2023.
//

import SwiftUI

struct WaterView: View {
    var body: some View {
        ZStack {
            Color(hue: 0.6, saturation: 0.5, brightness: 1.0)
                .ignoresSafeArea()
            VStack (alignment: .leading) {

                HStack(spacing: 150.0) {
                    Text("Water 💧")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                    // Score added in later
                }
                Spacer()
                    .frame(height: 20)
                Text("Introduction\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Water is a very important resource. Many of us take it for granted, however water scarcity is a real problem in many countries. Read more to find out more problems and how we can help to manage one of the most precious resources in the world.\n")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("\nWhat's the problem?\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Some places don't have enough clean water, leading to droughts and floods. Pollution makes water dirty and unsafe. Not everyone can access proper sanitation. Bad farming and cities growing too fast also harm water\n")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("\nWhat can we do to help?\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("• taking shorter showers / baths\n• collecting rainwater to use instead\n• using appliances with high efficiency\n• run appliances with full loads.\n• turn off taps when you don't use them\n")
                    .font(.headline)
                    .fontWeight(.medium)
                NavigationLink(destination: ResourcesView()) {
                            Text("Resources")
                            .font(.title3)
                            .frame(width: 115, height: 45, alignment: .center)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(15)
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .background(Rectangle()
                .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
            
            
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    
                    HStack {
                        NavigationLink(destination: ContentView()) {
                            Image("home")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        
                        
                        NavigationLink(destination: QuizView()) {
                            Image("checkbox")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        
                        NavigationLink(destination: AboutUsView()) {
                            Image("user")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        Spacer()
                        NavigationLink(destination: ResourcesView()) {
                            Image("document")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode:
                                        .fit)
                            
                        }
                    }
                    
                }
            }
        }
        .environmentObject(QuizScores())

    }
}

struct WaterView_Previews: PreviewProvider {
    static var previews: some View {
        WaterView()
    }
}
