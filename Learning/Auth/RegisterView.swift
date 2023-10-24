//
//  RegisterUIView.swift
//  Learning
//
//  Created by James Nyakundi on 16/10/2023.
//

import SwiftUI

struct RegisterView: View {
     
     @State private var fullname = ""
     @State private var age = ""
     @State private var email = ""
     @State private var password = ""
     
     @State private var toLogin = false
     
    var body: some View {
         VStack{
              Image("chef")
                   .resizable()
                   .frame(width: 200,height: 200)
              
              
              Text("Register")
                   .font(.system(size: 20,weight: .semibold, design: .rounded))
                   .foregroundColor(.brown)
                   .padding()
              
              
              TextField("Enter Fullname", text: $fullname)
                   .frame(maxWidth: .infinity,alignment:.center)
                   .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 6))
                   .padding(.vertical,15)
                   .font(.system(size: 18,weight: .regular))
                   .foregroundColor(.white)
                   .background(Color("textbg"))
                   .cornerRadius(12)
                   .padding(.horizontal)
                   .padding(.bottom,16)
              
              TextField("Enter Age", text: $age)
                   .frame(maxWidth: .infinity,alignment:.center)
                   .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 6))
                   .padding(.vertical,15)
                   .font(.system(size: 18,weight: .regular))
                   .foregroundColor(.white)
                   .background(Color("textbg"))
                   .cornerRadius(12)
                   .padding(.horizontal)
                   .padding(.bottom,16)
              
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
                   .padding(.bottom)
              
              
              Button {
                 toLogin = true
              } label: {
                   Text("Register")
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
                   Text("Aleady have an Account?")
                        .font(.system(size: 18,weight: .medium,design: .rounded))
                        .foregroundColor(.gray)
                   Button {
                      //
                   } label: {
                        Text("Login")
                             .font(.system(size: 18,weight: .medium,design: .rounded))
                             .foregroundColor(.blue)
                   }
                   .padding(.vertical)
                   .cornerRadius(12)
              }
         }
         .navigationBarBackButtonHidden()
    }
}

struct RegisterUIView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
