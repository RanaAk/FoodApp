//
//  NotokView.swift
//  FooDApp
//
//  Created by RANA  on 14/6/24.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchText: String
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                    .fontWeight(.light)
                    .padding(.trailing, 10)
                TextField(text: $searchText) {
   
                       
                        Text("search")
                        .foregroundStyle(Color.black)
                        .fontWeight(.light)
                    

                }
 
            }

                .padding(15)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))

            .padding()
            .shadow(radius: 5)
            //.shadow(radius: 20, y: 20)
            
            
            Image(systemName: "slider.horizontal.3")
                .resizable()
                .padding()
                .foregroundStyle(Color.white)
                .bold()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.red).opacity(0.9))
                .frame(width: 50, height: 50)
                .padding(.leading, -10)
            
        }
    }
}

#Preview {
    SearchView(searchText: .constant(""))
}
