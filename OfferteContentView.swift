//
//  OfferteContentView.swift
//  thefork
//
//  Created by Lorenzo Piccolo on 21/11/23.
//

import SwiftUI

struct OfferteContentView: View {
    var offerte: Offerte
    var body: some View {
        ZStack {
            Image(offerte.imageOfferta)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding()
            HStack{
                Text(offerte.textOfferta)
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
    OfferteContentView(offerte: Offerte(imageOfferta: "thefork50", textOfferta: "-50% off"))
}
