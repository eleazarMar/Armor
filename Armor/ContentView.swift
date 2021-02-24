//
//  ContentView.swift
//  Armor
//
//  Created by P.M. Student on 2/23/21.
//

import SwiftUI

struct ContentView: View {
    @State var selected : Int = 0
    var body: some View {
        
        
        VStack(alignment: .center) {
            Text("Armor")
                .font(.system(size: 50))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding()
            TabView(selection: $selected) {
                
                ForEach(1...4,id: \.self) { index in
                        GeometryReader { proxy in
                            Image("p\(index)")
                                .resizable()
                               // .frame(width: 400.0, height: 400.0)
                               // .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                //.scaledToFit()
                                .offset(x: -proxy.frame(in: .global).minX)
                                .overlay(
                                    
                                    Image("p7")
                                        
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: proxy.size.width / 3)
                                        .padding(-proxy.size.width / 30),
                                    alignment: .bottomTrailing
                                    
                                )
                        }
                        
                        .frame(height: 400.0)
                        //.cornerRadius(40)
                        .padding(10)
                        .background(Color.red)
                        .cornerRadius(21)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: -5)
                        .padding(10)
                    
                }
                
            }
            
            .tabViewStyle(PageTabViewStyle(indexDisplayMode:.never))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
