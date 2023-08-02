//
//  SecondQuizView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct SecondQuizView: View {
    @State private var howPolluting = 0
    @State private var buttonTapped = false
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(hue: 0.4, saturation: 0.15, brightness: 0.95)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20.0) {
                    Text("What's your primary method of transport?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.313, saturation: 1.0, brightness: 0.449))
                    Button("Car (non-electric, pre-2016") {
                        howPolluting = 4
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.gray)
                    
                    Button("Car (non-electric, post-2016") {
                        howPolluting = 3
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("Car (electric)") {
                        howPolluting = 2
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("Walk / bike") {
                        howPolluting = 0
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("Public transport") {
                        howPolluting = 1
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("Motorbike") {
                        howPolluting = 3
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    HStack{
                        
                        Button("Other") {
                            howPolluting = 1
                            buttonTapped = true
                        }
                        .font(.title3)
                        .buttonStyle(.borderedProminent)
                        .tint(.gray)
                        
                        Spacer()
                        VStack {
                            if buttonTapped{
                                NavigationLink(destination: QuizView()) {
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

struct SecondQuizView_Previews: PreviewProvider {
static var previews: some View {
SecondQuizView()
}
}
