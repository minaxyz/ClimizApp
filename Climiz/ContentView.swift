//
//  ContentView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var quizScores: QuizScores
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 180/255.0, green: 213/255.0, blue: 163/255.0)
                    .ignoresSafeArea()
                VStack {
                    Image("logo")
                    Spacer()
                }
                VStack{
                    Spacer()
                    NavigationLink(destination: SecondQuizView()) {
                        Text("Quiz")
                            .font(.title3)
                            .frame(width: 100, height: 50, alignment: .center)
                            .background(Color(hue: 0.421, saturation: 1.0, brightness: 0.543))
                            .foregroundColor(Color.white)
                            .cornerRadius(15)
                        
                            .toolbar {
                                ToolbarItemGroup(placement: .status) {
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
