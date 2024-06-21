//
//  ProfileView.swift
//  FooDApp
//
//  Created by RANA  on 15/6/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var name  :  String = "Mehedi Rana"
    @State private var email : String = "rananakah@gmail.com"
    @State private var deliveryAddress : String  = "Asia, World"
    @State private var password : String = "Herewego"
    @Environment (\.dismiss)  var dismiss
   
    var body: some View {
        VStack{
            NavigationStack{
                ProfileHeaderView()
                    .padding(.top, 50)
                    .navigationBarBackButtonHidden(true)
                HStack {
                    Button(action: {
                       dismiss()
                    }) {
                        Image(systemName: "arrow.backward")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .imageScale(.large)
                            .frame(height: 80)
                            
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        print("settings tapped")
                    }) {
                        Image(systemName: "gearshape")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .imageScale(.large)
                    }
                }
                //.padding(.horizontal, 10)
                .padding(.top, -245)
                .bold()
                
                VStack(alignment: .leading, spacing: 15) {
                    textInputView(name: "Name", email: $name)
                    
                    // EMail
                    textInputView(name: "Email", email: $email)
                    
                    //Delivery address
                    textInputView(name: "Delivery Address", email: $deliveryAddress)
                    
                    //Password
                    textInputView(name: "Password", email: $password, secure : true)
                }
                
                
                
                Divider()
                    .background(Color.gray)
                    .frame(width:  300)
                    .padding(.top, 10)
                
                VStack(spacing: 20){
                    HStack{
                        Text("Payment Details")
                        Spacer()
                        NavigationLink {
                            //
                        } label: {
                            Image(systemName: "chevron.forward")
                        }
                    }
                    LabeledContent {
                        NavigationLink {
                            //
                        } label: {
                            Image(systemName: "chevron.forward")
                        }

                    } label: {
                        Text("Order history")
                    }
                }
                .padding()
                .tint(.gray)
                .fontWeight(.semibold).opacity(0.8)
                
                HStack {
                    // Edit Profile Button
                    Button(action: {
                        // Add your edit profile action here
                    }) {
                        HStack {
                            Text("Edit Profile")
                            Image(systemName: "pencil.line")
                        }
                        .padding()
                        .frame(width: 200, height: 65)
                        .background(Color(red : 60/255.0, green : 48/255.0 , blue: 47/255.0))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                    }
                    Spacer()
                    // Log out Button
                    NavigationLink{
                        
                      //
                    } label:
                    {
                        HStack {
                            Text("Log out")
                            Image(systemName: "arrow.right")
                        }
                        .padding()
                        .frame(width: 140, height: 60)
                        .background(Color.white)
                        .foregroundColor(.red)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.red, lineWidth: 2)
                        )
                    }
                }
                .padding()
                .padding(.bottom, 25)
                .navigationBarBackButtonHidden(true)
         
                Spacer()
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
