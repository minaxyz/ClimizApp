//
//  QuizView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//
// 0 - Not at all, 1 - Rarely, 2 - Occasionally, 3 - Sometimes, 4 - Frequently, 5 - Extensively
import SwiftUI

struct QuizView: View {
    @State private var howOften = 0
    @State private var buttonTapped = false
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(hue: 0.4, saturation: 0.15, brightness: 0.95)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20.0) {
                    Text("And how often do you use them?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.313, saturation: 1.0, brightness: 0.449))
                    Button("Very little") {
                        howOften = 1
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.gray)
                    
                    Button("Occasionally") {
                        howOften = 2
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("Sometimes") {
                        howOften = 3
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    Button("Often") {
                        howOften = 4
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    HStack{
                    Button("Extensively") {
                        howOften = 5
                        buttonTapped = true
                    }
                    .font(.title3)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                        Spacer()
                            if buttonTapped{
                                NavigationLink(destination: ThirdQuizView()) {
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
    }
} // FirstQuestionView


struct FirstQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
