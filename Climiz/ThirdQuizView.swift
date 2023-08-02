//
//  ThirdQuizView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ThirdQuizView: View {
    @State private var shopping = 0
    @State private var buttonTapped = false
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(hue: 0.4, saturation: 0.15, brightness: 0.95)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20.0) {
                    Text("How much shopping do you do for non-essential items?")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.313, saturation: 1.0, brightness: 0.449))
                    Button("Hardly any") {
                        shopping = 4
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.red)
                    
                    Button("A few things a month") {
                        shopping = 3
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                    
                    Button("I buy quite a bunch of new things") {
                        shopping = 2
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.yellow)
                    
                    Button("Some things every week") {
                        shopping = 0
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    
                    Button("#1 Impulse Buyer") {
                        shopping = 1
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                    HStack{
                    Button("Basically a SHEIN hauler!") {
                        shopping = 3
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.indigo)
                        
                        Spacer()
                        VStack {
                            if buttonTapped{
                                NavigationLink(destination: FourthQuizView()) {
                                            Text("Next")
                                            .font(.title3)
                                            .frame(width: 75, height: 50, alignment: .center)
                                            .background(Color(hue: 0.421, saturation: 0.945, brightness: 0.411))
                                            .foregroundColor(Color.white)
                                            .cornerRadius(15)
                                }
                            }
                        }
                    }
                } // VStack
                .padding()
                .background(Rectangle())
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 30)
                .padding()
            }
        } // ZStack
    }
}

struct ThirdQuizView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuizView()
    }
}
