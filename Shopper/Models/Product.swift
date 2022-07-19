//
//  Product.swift
//  Shopper
//
//  Created by  Mr.Ki on 19.07.2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Vans ols school", image: "s1", price: 70),
                   Product(name: "Nike Air Force 1", image: "s2", price: 110),
                   Product(name: "Air Jordan", image: "s3", price: 250),
                   Product(name: "Nike Air Force 1", image: "s4", price: 120),
                   Product(name: "New Balnce", image: "s5", price: 100),
                   Product(name: "karhu", image: "s6", price: 120)
]
