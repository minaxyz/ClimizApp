//
//  QuizResultsView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//
// hello wirld
// Add simple descriptions and fix the crashing bug.
// *TRY* to add extended pages if possible.

import SwiftUI


struct QuizResultsView: View {
    @EnvironmentObject var quizScores: QuizScores
    @State private var waterResult = ""
    //  var waterResult = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 180/255.0, green: 213/255.0, blue: 163/255.0)
                    .ignoresSafeArea()
                ScrollView{
                    VStack {
                        Text("Your Results")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                        
                        // WATER 💧
                        
                        if quizScores.water <= 2 {
                            Text("Water 💧: Amazing!⭐️\nGreat job on managing your water! You help to convserve one of the most previous resources on the planet")
                                .fontWeight(.bold)
                            
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: WaterView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.blue)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }

                        }
                        else if quizScores.water >= 3 {
                            Text("Water 💧: That's ok 👌\nYou have done a good job with water consumption. Try  to use rainwater or limit your usage more!")
                                .fontWeight(.bold)
                            
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: WaterView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.blue)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }

                        }
                        else {
                            Text("Water 💧: Needs some work 😅\nMany problems can arise from using water too much, with water scarcity affecting more and more countries around the world.")
                                .fontWeight(.bold)
                            
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: WaterView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.blue)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }
                        }
                        
                        // RECYCLING ♻️
                        
                        if quizScores.recycling <= 2 {
                            Text("Recycling ♻️: Amazing!\nIt's great that you are recycling a lot! It means we don't have to get new resources from mines, refineries and more, saving a ton of energy.")
                                .fontWeight(.bold)
                            
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: RecyclingView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.green)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }

                            // CLICK HERE TO VIEW DETAILS
                            
                        }
                        else {
                            Text("Recycling ♻️: Needs some work\n\nRecycling helps us to use less resources and repurpose them for more items.")
                                .fontWeight(.bold)
                            
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                                .padding()
                            NavigationLink(destination: RecyclingView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.green)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }
                        }
                        
                        // TRANSPORT 🚏
                        
                        if quizScores.howPolluting <= 2 {
                            Text("Transport 🚏: Amazing!⭐️\nGreat job on being a climate hero! It's great that you use sustainable vehicles and to shop locally when you can. Keep up the good work!")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: TransportView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.yellow)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }
                        }
                        else if quizScores.howPolluting >= 3 {
                            Text("Transport 🚏: That's ok 👌\nGood job on not polluting too much. Your transport choices are quite good for the environmemt, but try walk or cycle and go to local businesses where you can.")
                                .fontWeight(.bold)
                            
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: TransportView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.yellow)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }
                        }
                        else {
                            Text("Transport 🚏: Needs some work 😅\nUsing too much transport, or using high-emission vehicles not only furthers climate change, but causes air pollution and respiratory problems for passer-bys.")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: TransportView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.yellow)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }
                            
                        }
                        if quizScores.shopping <= 2 {
                            Text("Shopping 🛍️: Amazing!⭐️\n\nWell done on shopping sustainably! You're a true climate hero 🌍")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: ShoppingView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.pink)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }
                        }
                        else if quizScores.shopping >= 3 {
                            Text("Shopping 🛍️: That's ok 👌\n\nTry to limit how much you shop, and whether you need things or not.")
                                .fontWeight(.bold)
                            
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: ShoppingView()) {
                                        Text("More Info")
                                        .font(.title3)
                                        .frame(width: 115, height: 45, alignment: .center)
                                        .background(Color.pink)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(15)
                            }
                        }
                        else {
                            Text("Shopping 🛍️: Needs some work 😅\n\nOvershopping can cause many problems, like landfills leaking down chemicals.")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, height: 100)
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(30)
                                .shadow(radius: 50)
                            NavigationLink(destination: ShoppingView()) {
                                Text("More Info")
                                    .font(.title3)
                                    .frame(width: 115, height: 45, alignment: .center)
                                    .background(Color.pink)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(15)
                            }
                            
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
                                        .scrollContentBackground(.hidden)
                                    }
                                }
                        }
                    }
                }
            }
        .environmentObject(QuizScores())
        }
        .environmentObject(QuizScores())
    }
}
struct QuizResultsView_Previews: PreviewProvider {
            static var previews: some View {
                QuizResultsView()
    }
}
