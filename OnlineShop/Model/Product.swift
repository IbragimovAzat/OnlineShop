//
//  Product.swift
//  OnlineShop
//
//  Created by Азат Ибрагимов on 18.08.2024.
//
import Foundation
import FirebaseFirestore

struct Product: Identifiable, Codable {
    @DocumentID var id: String?
    var name: String
    var description: String
    var image: String
    var price: Int
    var isFavourite: Bool
    var quantityInCart: Int?
}
