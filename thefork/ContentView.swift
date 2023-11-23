//
//  ContentView.swift
//  thefork
//
//  Created by Lorenzo Piccolo on 16/11/23.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        TabView {
            HomeView(cucineViewModel: CucineViewModel())
                .tabItem { Image(systemName: "fork.knife")
                Text("Home")}
            ReservationView()
                .tabItem { Image(systemName: "book.fill")
                Text("Reservations")}
            FavoritesView()
                .tabItem { Image(systemName: "heart")
                Text("Favourites")}
            ProfileView()
                .tabItem { Image(systemName: "person")
                Text("Profile")}
        }
        .tint(.green)

    }//test
}

#Preview {
    ContentView()
}
