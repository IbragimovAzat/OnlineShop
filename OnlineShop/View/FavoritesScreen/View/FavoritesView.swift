//
//  FavouritesView.swift
//  OnlineShop
//
//  Created by Азат Ибрагимов on 24.08.2024.
//

import SwiftUI
import FirebaseFirestore

struct FavoritesView: View {
    // MARK: - Properties
    @FirestoreQuery(collectionPath: "shop", predicates: [.isEqualTo("isFavourite", true)]) private var favoritesItems: [Product]
    var columns = Array(repeating: GridItem(), count: 2)
    
    // MARK: - Body
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(favoritesItems) { item in
                    NavigationLink(destination: EmptyView()) {
                        ProductCardView(product: item)
                    }
                }
            }
        }
        .navigationTitle("Favourites")
    }
}

#Preview {
    FavoritesView()
}
