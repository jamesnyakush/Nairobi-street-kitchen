//
//  LoginUIView.swift
//  Learning
//
//  Created by James Nyakundi on 16/10/2023.
//

import SwiftUI


struct LoginView: View {
     
     @State private var email = ""
     @State private var password = ""
     
     @State private var toRegister = false
     @State private var toLogin = false
     @State private var toForgotPassword = false
     
     var body: some View {
          NavigationStack() {
               VStack {
                    
                    Image("chef")
                         .resizable()
                         .frame(width: 200,height: 200)
                    
                    Text("Login")
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
                    
                    
                    SecureField("Enter Password", text: $password)
                         .frame(maxWidth: .infinity,alignment:.center)
                         .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 6))
                         .padding(.vertical,15)
                         .font(.system(size: 18,weight: .regular))
                         .foregroundColor(.white)
                         .background(Color("textbg"))
                         .cornerRadius(12)
                         .padding(.horizontal)
                    
                    Button {
                         toForgotPassword = true
                    } label: {
                         Text("forgot password ?")
                              .font(.system(size: 18,weight: .medium,design: .rounded))
                              .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    .padding(.vertical)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .navigationDestination(isPresented: $toForgotPassword) {
                         ForgotPasswordView()
                    }
                    
                    
                    Button {
                         toLogin = true
                    } label: {
                         Text("Login")
                              .font(.system(size: 18,weight: .semibold,design: .rounded))
                              .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity,alignment: .center)
                    .padding(.vertical)
                    .background(.brown)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .padding(.bottom,16)
                    .navigationDestination(isPresented:$toLogin) {
                         DashboardView()
                    }
                    
                    HStack{
                         Text("Create Account?")
                              .font(.system(size: 18,weight: .medium,design: .rounded))
                              .foregroundColor(.gray)
                         Button {
                              toRegister = true
                         } label: {
                              Text("Register")
                                   .font(.system(size: 18,weight: .medium,design: .rounded))
                                   .foregroundColor(.blue)
                         }
                         .padding(.vertical)
                         .cornerRadius(12)
                         .navigationDestination(isPresented: $toRegister) {
                              RegisterView()
                         }
                    }
               }
          }
          .navigationBarBackButtonHidden()
     }
}

struct LoginView_Previews: PreviewProvider {
     static var previews: some View {
          LoginView()
     }
}
