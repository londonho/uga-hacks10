//
//  HomeView.swift
//  Hoppin
//
//  Created by london ho on 2/7/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                    .frame(height: geometry.size.height * 0.25)
                Image(.hoppinLogo)
                    .resizable()
                    .frame(width:200,height:200)
                    .offset(x:13)
                    
                Spacer()
                Button(action: {
                    print("clicked")
                }) {
                    Text("get started")
                        .font(.headline)
                        .foregroundColor(Color(red: 1.0, green: 0.675, blue: 0.89))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 5)
                }
                Spacer()
                    .frame(height: geometry.size.height * 0.375)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

#Preview {
    HomeView()
}
