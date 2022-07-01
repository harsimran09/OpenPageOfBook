//
//  ContentView.swift
//  Worksheet_OpenPage
//
//  Created by ITRS-1519 on 09/06/22.
//

import SwiftUI

struct ImageOverlay: View {
    var body: some View {
        ZStack {
            Text("Credit: Ricardo Gomez Angel")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
            .opacity(0.8)
            .cornerRadius(10.0)
            .padding(6)
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(0 ..< 5) { item in
                    GeometryReader { geometry in
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            VStack {
                                Image("activity_read_along")
                                    .resizable()
                                    .scaledToFit().frame(width:200, height: 200)
                            }
                            
                            Text("Harsimran kaur")
                                .font(.callout)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.trailing)
                                .padding(6)
                                .foregroundColor(.yellow)
                                .offset(x: 70, y: 125)
                                .shadow(radius: 50)
                                
                        }
                        .rotation3DEffect(
                            Angle(
                                degrees: Double((geometry.frame(in: .global).minX - 20) / -20)
                            ),
                            axis: (x: 0, y: 1, z: 0),
                            anchor: .center,
                            anchorZ: 0.0,
                            perspective: 1.0
                        )
                        
                    }
                    .frame(width: 300, height: 300)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
