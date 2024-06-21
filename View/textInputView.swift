//
//  tsxtInputView.swift
//  FooDApp
//
//  Created by RANA  on 15/6/24.
//

import SwiftUI

struct textInputView: View {
    var name : String
    @Binding var email : String
    @State  var secure : Bool = false
    @FocusState private var isFocused
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 5) {
                HStack{
                    Text(name)
                        .foregroundColor(.gray)
                        .font(.system(size: 17))
                    if secure {
                        Image(systemName: "lock.fill")
                            .foregroundStyle(.gray)
                    }
                }

                if !secure {
                    TextField("", text: $email)
                        .padding()
                        .focused($isFocused)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    // Make the text field non-editable
                        .foregroundColor(.black)
                }else {
                    
                    SecureField("", text: $email)
                        .padding()
                        .background{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1 )
                        }
                }
            }
    
            .padding(.horizontal)
        }
    }
}

#Preview {
    textInputView(name: "Email", email: .constant(""))
}
