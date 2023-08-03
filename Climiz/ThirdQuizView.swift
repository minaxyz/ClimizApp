//
//  ThirdQuizView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ThirdQuizView: View {
    @State private var buttonTapped = false
    @EnvironmentObject var quizScores: QuizScores
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(hue: 0.4, saturation: 0.15, brightness: 0.95)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20.0) {
                    Text("How much shopping do you do for non-essential items?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.313, saturation: 1.0, brightness: 0.449))
                    Button("Hardly any") {
                    quizScores.shopping = 0
                    quizScores.totalScore += 0
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.gray)
                    
                    Button("A few things a month") {
                        quizScores.shopping = 1
                        quizScores.totalScore += 1
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("I buy quite a bunch of new things") {
                        quizScores.shopping = 2
                        quizScores.totalScore += 2
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("Some things every week") {
                        quizScores.shopping = 3
                        quizScores.totalScore += 3
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("#1 Impulse Buyer") {
                        quizScores.shopping = 4
                        quizScores.totalScore += 4
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    HStack{
                    Button("Basically a SHEIN hauler!") {
                        quizScores.shopping = 5
                        quizScores.totalScore += 5
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                        
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
// drag buttons down
// colour button consistency
// add what question number we are on
