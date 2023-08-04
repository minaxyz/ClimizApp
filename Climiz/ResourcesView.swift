//
//  ResourcesView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct ResourcesView: View {
    var body: some View {
        ZStack {
            Color(red: 180/255.0, green: 213/255.0, blue: 163/255.0)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                
                VStack(spacing: 20.0){
                    ScrollView{
                        Text("Resources")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.leading)
                        
                        VStack{
                            Text("Looking to further your sustainable lifestyle? Look no further!")
                                .font(.subheadline)
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                        .frame(height: 50)
                        
                        Group{
                            Text("Carbon Footprint")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Text("https://youmatter.world/en/definition/definitions-carbon-footprint/")
                            
                            
                            
                            Spacer()
                                .frame(height: 50)
                            
                            Text("How to reduce your Carbon Footprint")
                            Text("https://sustainability.georgetown.edu/")
                            
                            Spacer()
                                .frame(height: 50)
                            
                            Text("Recycle")
                            
                            Text("https://www.recyclenow.com/")
                            
                            Spacer()
                                .frame(height: 50)
                        }
                        
                        
                        Group{
                            Text("Climate change")
                            Text("https://www.epa.gov/climate-change")
                            
                            Spacer()
                                .frame(height: 50)
                            
                            Text("Online shopping affecting the climate")
                            Text("https://earth.org/online-shopping-and-its-environmental-impact/")
                            Spacer()
                            Text("https://www.theguardian.com/lifeandstyle/2021/may/30/should-we-all-stop-shopping-how-to-end-overconsumption")
                            
                            Spacer()
                                .frame(height: 50)
                            Text("Over consuming")
                            
                            
                            Group{
                                Text("https://ailuna.com/overconsumption-environment/")
                                Spacer()
                                    .frame(height: 50)
                                Text("Travel")
                                Text("https://www.eta.co.uk/environmental-info/air-travels-impact-on-climate-change")
                            }
                        }
                    }
                }
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
            .cornerRadius(30)
            .shadow(radius: 50)
            .padding()
            
            
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
                }
            }
        }
        .scrollContentBackground(.hidden)
        .environmentObject(QuizScores())

    }
}
    


struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
