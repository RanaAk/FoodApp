//
//  IngredientView.swift
//  FooDApp
//
//  Created by RANA  on 16/6/24.
//

import SwiftUI
import SwiftData

struct IngredientView: View {
    
     var sample : Ingredient
     var tapped : Bool
    
    var body: some View {
        HStack{

                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.black.opacity(0.8))
                        .frame(width: 90, height: 60)
                        .offset(y: 20)
                        .overlay(alignment: .bottomLeading) {
                            Text(sample.name)
                                .foregroundStyle(.white)
                                .offset(x: 3.5, y: 5)
                        }
                        .overlay(alignment: .bottomTrailing) {
                            Button(action: {
                                //
                            }, label: {
                                Image(systemName: tapped ? "checkmark.circle.fill" : "plus")
                                    .resizable()
                                   
                                    .bold()
                                    .foregroundStyle(.white)
                                    .frame(width: 12, height: 12)
                                    .padding(5)
                                    .background(tapped ? Color.blue : Color.red)
                                    .background(in : .rect(cornerRadius: 50))
                                    .offset(x:-2.6, y: 7)
                                    .scaleEffect(tapped ? 1.2 : 1.0)
                            })
                            .contentTransition(.symbolEffect(.replace))

                                
                        }
                }
                .frame(width: 150, height: 150)
                .overlay(alignment: .top) {
                    Image(sample.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 80)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                        .shadow(radius: 10)
            }
            
           
        }
    }
}

#Preview {
//    IngredientView()
//        .modelContainer(Ingredient.preview)
    
    let container = try! ModelContainer(for: Ingredient.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    let sample = Ingredient(
                            name: "Tomato",
                            image: "Toppings1",
                            price: 4,
                            type: "Toppings"
                )
    
    container.mainContext.insert(sample)
    
    return NavigationStack{
        IngredientView(sample : sample, tapped: false)
    }
    
}
