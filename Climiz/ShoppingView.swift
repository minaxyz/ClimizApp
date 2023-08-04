//
//  ShoppingView.swift
//  Climiz
//
//  Created by scholar on 04/08/2023.
//

import SwiftUI

struct ShoppingView: View {
    var body: some View {
        ZStack {
            Color(hue: 0.95, saturation: 0.5, brightness: 1.0)
                .ignoresSafeArea()
            VStack (alignment: .leading) {

                HStack(spacing: 150.0) {
                    Text("Shopping 🛍️")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                }
                Spacer()
                    .frame(height: 20)
                Text("Introduction\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Shopping is at the forefront of economics and keeping the world running. Commerce has been running for millenia, however modern times have given way to a consumer boom. So, how do we prevent this boom from becoming an explosion?\n")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("What's the problem?\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Many items, such as clothes are used only once then thrown away. This causes huge pile-ups in developing nations which also leaks dangerous chemicals into the soil, contaminating water and crops. This also gives way to child labour and exploitation due to the surge in demand.")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("\nWhat can we do to help?\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("• buy pre loved / second hand where possible\n• think twice- 'how much will I use it?'\n• support small businesses with sustainable initiatives\n• recycle / donate used items")
                    .font(.headline)
                    .fontWeight(.medium)
                NavigationLink(destination: ResourcesView()) {
                            Text("Resources")
                            .font(.title3)
                            .frame(width: 115, height: 45, alignment: .center)
                            .background(Color.pink)
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

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
    }
}
