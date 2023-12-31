//
//  FourthQuizView.swift
//  Climiz
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct FourthQuizView: View {
    @State private var buttonTapped = false
    @EnvironmentObject var quizScores: QuizScores
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hue: 0.4, saturation: 0.15, brightness: 0.95)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20.0) {
                    Text("Do you recycle?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.313, saturation: 1.0, brightness: 0.449))
                    HStack {
                    Button("Always") {
                        quizScores.recycling = 0
                        quizScores.totalScore += 0
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                        
                    Button("Never") {
                        quizScores.recycling = 4
                        quizScores.totalScore += 4
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                        
                        Spacer()
                            if buttonTapped{
                                NavigationLink(destination: FifthQuizView()) {
                                            Text("Next")
                                            .font(.title3)
                                            .frame(width: 75, height: 50, alignment: .center)
                                            .background(Color(hue: 0.421, saturation: 0.945, brightness: 0.411))
                                            .foregroundColor(Color.white)
                                            .cornerRadius(15)
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
        .environmentObject(QuizScores())

    }
}

struct FourthQuizView_Previews: PreviewProvider {
    static var previews: some View {
        FourthQuizView()
    }
}
