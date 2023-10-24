//
//  ResetPasswordView.swift
//  Learning
//
//  Created by James Nyakundi on 24/10/2023.
//

import SwiftUI

struct ResetPasswordView: View {
     @State private var password = ""
     var body: some View {
          NavigationStack() {
               VStack {
                    
                    Image("chef")
                         .resizable()
                         .frame(width: 200,height: 200)
                    
                    Text("Reset Password")
                         .font(.system(size: 20,weight: .semibold, design: .rounded))
                         .foregroundColor(.brown)
                         .padding()
                    
                    
                    
                    
                    SecureField("Enter Password", text: $password)
                         .frame(maxWidth: .infinity,alignment:.center)
                         .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 6))
                         .padding(.vertical,15)
                         .font(.system(size: 18,weight: .regular))
                         .foregroundColor(.white)
                         .background(Color("textbg"))
                         .cornerRadius(12)
                         .padding(.horizontal)
                         .padding(.bottom,18)
                    
                    SecureField("Confirm Password", text: $password)
                         .frame(maxWidth: .infinity,alignment:.center)
                         .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 6))
                         .padding(.vertical,15)
                         .font(.system(size: 18,weight: .regular))
                         .foregroundColor(.white)
                         .background(Color("textbg"))
                         .cornerRadius(12)
                         .padding(.horizontal)
                         .padding(.bottom,18)
                    
                    
                    
                    Button {
                         //toLogin = true
                    } label: {
                         Text("Reset Password")
                              .font(.system(size: 18,weight: .semibold,design: .rounded))
                              .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity,alignment: .center)
                    .padding(.vertical)
                    .background(.brown)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .padding(.bottom,16)
                    //                   .navigationDestination(isPresented:$toLogin) {
                    //                        DashboardView()
                    //                   }
               }
          }
          .navigationBarBackButtonHidden()
     }
}

#Preview {
     ResetPasswordView()
}
