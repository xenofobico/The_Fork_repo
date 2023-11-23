//
//  SearchBar.swift
//  thefork
//
//  Created by Lorenzo Piccolo on 22/11/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool

    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .padding(.leading, 24)
                .onChange(of: searchText) { _ in
                    isSearching = true
                }

            Button(action: {
                searchText = ""
                isSearching = false
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }) {
                Image(systemName: "xmark.circle.fill")
                    .padding(.trailing, 8)
                    .opacity(searchText == "" ? 0 : 1)
            }
        }
        .padding(5)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding([.leading, .bottom, .trailing], 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
