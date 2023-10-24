//
//  WelcomeView.swift
//  Learning
//
//  Created by James Nyakundi on 16/10/2023.
//

import SwiftUI



struct WelcomeView: View {
     
     @State private var toLogin = false
     
     var body: some View {
          
          NavigationStack{
               
               VStack {
                    Image("chef")
                         .resizable()
                         .scaledToFit()
                    
                    Text("Nairobi Street Kitchen")
                         .font(.system(size: 30, weight: .semibold, design: .rounded))
                         .multilineTextAlignment(.center)
                         .foregroundColor(.brown)
                         .padding(.top,30)
                         .padding(.bottom, 8)
                    
                    Text("Welcome to Nairobi's most unique Dining Experience")
                         .font(.system(size: 20, weight: .semibold, design: .rounded))
                         .multilineTextAlignment(.center)
                         .foregroundColor(.gray)
                         .padding(.bottom, 30)
                    
                    Button{
                         toLogin = true
                    } label: {
                         Text("Get Started")
                              .foregroundColor(.white)
                              .font(.system(size: 18, weight: .semibold, design: .rounded))
                    }
                    .frame(maxWidth: .infinity,alignment: .center)
                    .padding(.vertical, 16)
                    .background(.brown)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .navigationDestination(isPresented: $toLogin) {
                         LoginView()
                    }
               }
               
          }
          
     }
}

struct WelcomeView_Previews: PreviewProvider {
     static var previews: some View {
          WelcomeView()
     }
}
