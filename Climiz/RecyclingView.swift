//
//  RecyclingView.swift
//  Climiz
//
//  Created by scholar on 04/08/2023.
//

import SwiftUI

struct RecyclingView: View {
    var body: some View {
        ZStack {
            Color(.green)
                .ignoresSafeArea()
            VStack (alignment: .leading) {

                HStack(spacing: 150.0) {
                    Text("Recycling ♻️")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                }
                Spacer()
                    .frame(height: 20)
                Text("Introduction\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("You may have seen bins for recycling and dumped a bottle or two in there. But did you know that 90% of waste put in the bins isn't actually recycled, only worsening the problem? Read on to find out how you can help to recycle more.\n")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("What's the problem?\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Many people don't know how to recycle properly, or just underestimate the impact of littering. This causes atrocities like the Great Pacific Garbage Patch and landfills leaking chemicals into the soil. And incinerating rubbish generates lots of greenhouse gases, furthering climate change.")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("\nWhat can we do to help?\n")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("• clean out rubbish and squash it before placing it in the recycling\n• participate in local litter-picks and encourage friends and families to not litter\n• donate used items to charity \n• upcycle - make new things out of old")
                    .font(.headline)
                    .fontWeight(.medium)
                NavigationLink(destination: ResourcesView()) {
                            Text("Resources")
                            .font(.title3)
                            .frame(width: 115, height: 45, alignment: .center)
                            .background(Color.green)
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

struct RecyclingView_Previews: PreviewProvider {
    static var previews: some View {
        RecyclingView()
    }
}
