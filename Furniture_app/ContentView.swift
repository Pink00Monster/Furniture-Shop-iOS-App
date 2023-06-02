//
//  ContentView.swift
//  Furniture_app
//
//  Created by Abu Anwar MD Abdullah on 14/2/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            ZStack {
                Color("Bg")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("chair_1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                    
                    DescriptionView()
                        .offset(y: -40.0)
                
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



struct DescriptionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Swedish chair")
                .font(.title)
                .fontWeight(.bold)
            
            HStack(spacing: 4) {
                ForEach(0 ..< 5) { item in
                    Image("star")
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
            }
            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("Swedish chair is a contemporary chair based on the virtues of modern craft, it carries on the simplicities and honestly of the archetypical chair. ")
                .lineSpacing(8.0)
                .opacity(0.6)
            
            HStack {
                VStack {
                    Text("Size")
                        .fontWeight(.semibold)
                }
            }
        }
        .padding()
        .padding(.top)
        .background(Color("Bg"))
        .cornerRadius(40.0)
    }
}
