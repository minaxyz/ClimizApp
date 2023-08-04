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
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        
                        HStack {
                            NavigationLink(destination: ContentView()) {
                                Image("home")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                            }
                            NavigationLink(destination: SecondQuizView()) {
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
        }
        //.environmentObject(QuizScores())

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
