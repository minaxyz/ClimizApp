//
//  FifthQuizView.swift
//  Climiz
//
//  Created by scholar on 02/08/2023.
//

import SwiftUI

struct FifthQuizView: View {
    @State private var buttonTapped = false // Shows results once tapped
    @EnvironmentObject var quizScores: QuizScores
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hue: 0.4, saturation: 0.15, brightness: 0.95) // Sets bg colour
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20.0) {
                    Text("And your water consumption? 💧") // Title
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.313, saturation: 1.0, brightness: 0.449))
                    Button("Only take what I need") {
                        quizScores.water = 0
                        quizScores.totalScore += 0
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.gray)
                    
                    Button("Bit liberal with how much I use") {
                        quizScores.water = 2
                        quizScores.totalScore += 2
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("Take a few too many baths...") {
                        quizScores.water = 3
                        quizScores.totalScore += 3
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    HStack{
                    Button("Can I just see results? Not answering... it's too much 😅") {
                        quizScores.water = 4
                        quizScores.totalScore += 4
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                        
                    Spacer()
                    VStack {
                        if buttonTapped{
                            NavigationLink(destination: QuizResultsView()) {
                                Text("Results")
                                .font(.title3)
                                .frame(width: 85, height: 50, alignment: .center)
                                .background(Color(hue: 0.421, saturation: 0.945, brightness: 0.411))
                                .foregroundColor(Color.white)
                                .cornerRadius(15)
                            }
                        }
                    }
                }
            }
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

struct FifthQuizView_Previews: PreviewProvider {
    static var previews: some View {
        FifthQuizView()
    }
}
