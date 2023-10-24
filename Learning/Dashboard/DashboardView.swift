//
//  DashboardUIView.swift
//  Learning
//
//  Created by James Nyakundi on 16/10/2023.
//

import SwiftUI

struct DashboardView: View {
     var body: some View {
          
          NavigationStack {
               TabView{
                    HomeView()
                         .tabItem {
                              Label("Home", systemImage: "house")
                                   .foregroundColor(Color("textbg"))
                         }
                         
                    
                    ProfileView()
                         .tabItem { Label("Profile",systemImage: "gear") }
               }
          }
          
     }
}

struct DashboardView_Previews: PreviewProvider {
     static var previews: some View {
          DashboardView()
     }
}
