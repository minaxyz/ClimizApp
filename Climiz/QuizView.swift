//
//  QuizView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//
// 0 - Not at all, 1 - Rarely, 2 - Occasionally, 3 - Sometimes, 4 - Frequently, 5 - Extensively
import SwiftUI

struct QuizView: View {
    @State private var carUsage = 0
    var body: some View {
        ZStack {
            Color(hue: 0.4, saturation: 0.15, brightness: 0.95)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Text("How often do you use it (in a month)?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.313, saturation: 1.0, brightness: 0.449))
                Text("Gonna add descriptors here")
                    .foregroundColor(Color.green)
                Button("Not at all") {
                    carUsage = 0
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .tint(Color.red)
                
                Button("Occasionally") {
                    carUsage = 1
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .tint(.yellow)
                
                Button("Sometimes") {
                    carUsage = 2
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                Button("Quite a lot") {
                    carUsage = 3
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                
                Button("Extensively") {
                    carUsage = 4
                }
                .font(.title3)
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
 
            } // VStack
            .padding()
            .background(Rectangle())
            .foregroundColor(.white)
            .cornerRadius(15)
            .shadow(radius: 30)
            .padding()
            
        } // ZStack
    } // body
} // FirstQuestionView


struct FirstQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
