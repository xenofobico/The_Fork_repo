//
//  CucineViewModel.swift
//  thefork
//
//  Created by Lorenzo Piccolo on 21/11/23.
//

import Foundation
class CucineViewModel:ObservableObject {
    var cucine: [Cucine] = [
        Cucine(nameCucine: "Steak", imageCucine: "carne"),
        Cucine(nameCucine: "Japanese", imageCucine: "giapponese"),
        Cucine(nameCucine: "Italian", imageCucine: "italiano"),
        Cucine(nameCucine: "Fish", imageCucine: "pesce"),
        Cucine(nameCucine: "Pizza", imageCucine: "pizzeria")

    ]
    
}
