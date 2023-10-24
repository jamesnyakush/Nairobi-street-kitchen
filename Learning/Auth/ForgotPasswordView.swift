//
//  ForgotPasswordView.swift
//  Learning
//
//  Created by James Nyakundi on 24/10/2023.
//

import SwiftUI

struct ForgotPasswordView: View {
     
     @State private var email = ""
     
     
     @State private var toReset = false
     
     var body: some View {
          NavigationStack {
               VStack{
                    Image("chef")
                         .resizable()
                         .frame(width: 200,height: 200)
                    
                    Text("Forgot Password")
                         .font(.system(size: 20,weight: .semibold, design: .rounded))
                         .foregroundColor(.brown)
                         .padding()
                    
                    
                    TextField("Enter Email", text: $email)
                         .frame(maxWidth: .infinity,alignment:.center)
                         .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 6))
                         .padding(.vertical,15)
                         .font(.system(size: 18,weight: .regular))
                         .foregroundColor(.white)
                         .background(Color("textbg"))
                         .cornerRadius(12)
                         .padding(.horizontal)
                         .padding(.bottom,16)
                    
                    
                    
                    Button {
                         toReset = true
                    } label: {
                         Text("Forgot Password")
                              .font(.system(size: 18,weight: .semibold,design: .rounded))
                              .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity,alignment: .center)
                    .padding(.vertical)
                    .background(.brown)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .padding(.bottom,16)
                    .navigationDestination(isPresented: $toReset) {
                         ResetPasswordView()
                    }
                    
               }
               .navigationBarBackButtonHidden()
          }
     }
}

#Preview {
     ForgotPasswordView()
}
