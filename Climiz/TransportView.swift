//
//  TransportView.swift
//  Climiz
//
//  Created by scholar on 04/08/2023.
//

import SwiftUI

struct TransportView: View {
    var body: some View {
        
        
        ZStack {
            Color(hue: 0.15, saturation: 1.0, brightness: 1.0)
                .ignoresSafeArea()
            VStack {
                
            

            VStack (alignment: .leading) {
                
                HStack(spacing: 150.0) {
                    Text("Transport 🚕")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.yellow)
                }
                Spacer()
                    .frame(height: 20)
                Text("Introduction\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Travelling is something that us humans can't live without. From home to work or a party to the shops, more and more people are using transport. This can either be good or bad - depending on the types we use and how often we use them.\n")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("What's the problem?\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("In many urban areas, there is a lot of air pollution from nitrous oxides from vehicle emissions and lots of congestion, which is a huge problem around urban schools as it can damage young children's health systems. Also, emissions from some vehicles (non-electric, motorbikes) speed up climate change, which hosts a whole bunch of other problems.")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("\nWhat can we do to help?\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("• try walking or taking public transport more\n• use low emission / electric cars\n• support green initiatives by independents or local council\n• try to shop / eat out local")
                    .font(.headline)
                    .fontWeight(.medium)
                NavigationLink(destination: ResourcesView()) {
                    Text("Resources")
                        .font(.title3)
                        .frame(width: 115, height: 45, alignment: .center)
                        .background(Color.yellow)
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
        }
        .environmentObject(QuizScores())
    }
}

struct TransportView_Previews: PreviewProvider {
    static var previews: some View {
        TransportView()
    }
}
