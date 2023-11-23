//
//  HomeView.swift
//  thefork
//
//  Created by Lorenzo Piccolo on 16/11/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var cucineViewModel: CucineViewModel
    @State private var searchText = ""
    @State private var isSearching = false
    
    var filteredCucine: [Cucine] {
            if searchText.isEmpty {
                return cucineViewModel.cucine
            } else {
                return cucineViewModel.cucine.filter { $0.nameCucine.localizedCaseInsensitiveContains(searchText) }
            }
        }
    
    var offerte = OfferteViewModel()
    var cucine = CucineViewModel()
        
    var body: some View {
        NavigationView {
            VStack {
                
                SearchBar(searchText: $searchText, isSearching: $isSearching)

                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(offerte.offerte) { offerta in
                            NavigationLink(destination: OfferteContentView(offerte: offerta)) {
                                ZStack {
                                    Image(offerta.imageOfferta)
                                        .resizable()
                                        .frame(width: 350, height: 200)
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(25)
                                        .padding()
                                    Text(offerta.textOfferta)
                                        .font(.title)
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding(.top, 145)
                                }
                                .padding(5)
                                
                            }
                        }
                    }
                }
                .padding()
                
                Text("Type of cuisine")
                    .padding(.trailing, 125)
                    .font(.title)
                    .bold()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(filteredCucine) { cucina in
                            NavigationLink(destination: CucineContentView(cucine: cucina)) {
                                VStack {
                                    Image(cucina.imageCucine)
                                        .resizable()
                                        .frame(width: 65, height: 65)
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(35)
                                        .padding(5)
                                    Text(cucina.nameCucine)
                                        .font(.subheadline)
                                        .bold()
                                        .foregroundColor(.black)
                                }
                                
                            }
                        }
                    }
                }
                .padding()
                
            }
            
        }

    }
    
}

#Preview {
    HomeView(cucineViewModel: CucineViewModel())
}
