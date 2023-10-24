//
//  HomeView.swift
//  Learning
//
//  Created by James Nyakundi on 24/10/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
         NavigationStack {
              VStack {
                   Text("Welcome this is dashboard")
              }
              .navigationTitle("Dashboard")
         }
        
    }
}

#Preview {
    HomeView()
}
