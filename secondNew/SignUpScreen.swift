//
//  SignUpScreen.swift
//  secondNew
//
//  Created by Muhammad Islamov on 18/02/22.
//

import SwiftUI

struct SignUpScreen: View {
    @State var fullname = ""
    @State var email = ""
    @State var phone = ""
    @State var password = ""
   @Environment(\.presentationMode) var presentation

    var body: some View {
        VStack{
            Spacer()
            Text("Instagram").font(.system(size: 30))
            TextField("Fullname", text: $fullname)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            TextField("Email", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            TextField("Phone", text: $phone)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            SecureField("Password", text: $password)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            Button(action: {
                
            }, label: {
                HStack{
                    Spacer()
                    Text("Sign Up").foregroundColor(Color.white)
                    Spacer()
                }
            })
                .frame(height: 45)
                .background(Color.blue)
                .cornerRadius(8)
            Spacer()
            HStack{
                Text("Already have an account?")
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Text("Sign In").foregroundColor(Color.black)
                        .font(.system(size: 18))
                })
            }
            
        }.padding()
        
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
