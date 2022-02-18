//
//  SignInScreen.swift
//  secondNew
//
//  Created by Muhammad Islamov on 18/02/22.
//

import SwiftUI

struct SignInScreen: View {
    
    @State var email = ""
    @State var password = ""
    @State var isModal = false
    
    var body: some View {
        VStack{
            Spacer()
            Text("Instagram").font(.system(size: 30))
            TextField("Email", text: $email)
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
                    Text("Sign In").foregroundColor(Color.white)
                    Spacer()
                }
            })
                .frame(height: 45)
                .background(Color.blue)
                .cornerRadius(8)
            Spacer()
            HStack{
                Text("Do'nt have an account?")
                Button(action: {
                    isModal = true
                }, label: {
                    Text("SignUP").foregroundColor(Color.black)
                        .font(.system(size: 18))
                }).sheet(isPresented: $isModal, content: {
                    SignUpScreen()
                })
            }
            
        }.padding()
        
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
