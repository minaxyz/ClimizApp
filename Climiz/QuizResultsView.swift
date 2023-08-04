//
//  QuizResultsView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//
// I was meant to make this look much nicer


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
                            .foregroundColor(Color(hue: 0.3, saturation: 0.25, brightness: 0.85))
                            .padding()
                        
                        // WATER 💧
                        
                        if quizScores.water <= 2 {
                            Text("Water: Amazing!⭐️")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.blue)
                                .multilineTextAlignment(.leading)
                            Text("Great job on managing your water! You help to convserve one of the most previous resources on the planet.")
                                .font(.body)
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
                            Text("Water: That's ok 👌")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.blue)
                                .multilineTextAlignment(.leading)
                            Text("You have done a good job with water consumption. Try  to use rainwater or limit your usage more!")
                                .font(.body)
                            
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
                            Text("Water: Needs some improvement 📈")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.blue)
                                .multilineTextAlignment(.leading)
                            Text("Many problems can arise from using too much water. Water scarcity is becoming a major issue in more and more countries, so it is vital to address it and make improvements as soon as possible.")
                            
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
                            Text("Recycling ♻️: Amazing!")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.green)
                                .multilineTextAlignment(.leading)
                             Text("It's great that you are recycling a lot! It means we don't have to get new resources from mines, refineries and more, saving a ton of energy.")
                            
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
                            Text("Recycling ♻️: Needs some work 📈")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.green)
                                .multilineTextAlignment(.leading)
                            Text("Recycling helps us to use less resources and repurpose them for more items.")
                            
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
                            Text("Transport 🚏: Amazing!⭐️")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.yellow)
                                .multilineTextAlignment(.leading)
                            Text("Great job on being a climate hero! It's great that you use sustainable vehicles and to shop locally when you can. Keep up the good work!")
                                .fontWeight(.bold)
                            
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
                            Text("Transport 🚏: That's ok 👌\n")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.yellow)
                                .multilineTextAlignment(.leading)
                            Text("Good job on not polluting too much. Your transport choices are quite good for the environmemt, but try walk or cycle and go to local businesses where you can.")
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
                            Text("Transport 🚏: Needs some work 😅\n")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.yellow)
                                .multilineTextAlignment(.leading)
                            Text("Using too much transport, or using high-emission vehicles not only furthers climate change, but causes air pollution and respiratory problems for passer-bys.")
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
                            Text("Shopping 🛍️: Amazing!⭐️")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.pink)
                                .multilineTextAlignment(.leading)
                            Text("\nWell done on shopping sustainably! You're a true climate hero 🌍")
                            
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
                            Text("Shopping 🛍️: That's ok 👌\n")
                                .fontWeight(.bold)
                                .font(.headline)
                                .foregroundColor(Color.pink)
                                .multilineTextAlignment(.leading)
                            Text("Try to limit how much you shop, and whether you need things or not.")
                            
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
                                Text("Shopping 🛍️: Needs some work 😅\n")
                                    .fontWeight(.bold)
                                    .font(.headline)
                                    .foregroundColor(Color.pink)
                                    .multilineTextAlignment(.leading)
                                Text("Overshopping can cause many problems, like landfills leaking down chemicals.")
                                
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
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(Rectangle()
                        .foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
                }
            }
        }
        .environmentObject(QuizScores())
    }
}
struct QuizResultsView_Previews: PreviewProvider {
            static var previews: some View {
                QuizResultsView()
    }
}
