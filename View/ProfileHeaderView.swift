//
//  ProfileHeaderView.swift
//  FooDApp
//
//  Created by RANA  on 15/6/24.
//


import SwiftUI

struct ProfileHeaderView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        NavigationStack {
            ZStack {
                    // Background
                    Rectangle()
                        .fill(LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.pink]),
                            startPoint: .top,
                            endPoint: .bottom)
                        )
                        .frame(height: 200)
                        .ignoresSafeArea()
                    
                    // Background Images
                    HStack {
                        Image(systemName: "flame.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .opacity(0.2)
                            .padding(.leading, 20)
                        Spacer()
                        Image(systemName: "flame.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .opacity(0.2)
                            .padding(.trailing, 20)
                    }
                    .padding(.top, -80)
                    

                    VStack {
                        Spacer()
                        
                        Image("greenland") 
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 125, height: 130)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.red, lineWidth: 2)
                            )
                            .shadow(radius: 10)
                            .padding(.top, 70)
                        
                        Spacer()
                    }
                }
            .frame(height: 200)
        }
            

    }
}


#Preview {
    ProfileHeaderView()
}
