//
//  CucineContentView.swift
//  thefork
//
//  Created by Lorenzo Piccolo on 21/11/23.
//

import SwiftUI

struct CucineContentView: View {
    var cucine: Cucine
    var body: some View {
        ZStack {
            Image(cucine.imageCucine)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding()
            HStack{
                Text(cucine.nameCucine)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
            }
            .padding(.top, 150)
            .padding(.trailing, 200)

        }
    }
}

#Preview {
    CucineContentView(cucine: Cucine(nameCucine: "Steak", imageCucine: "carne"))
}
