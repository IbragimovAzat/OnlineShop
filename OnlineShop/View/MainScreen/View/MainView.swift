//
//  ContentView.swift
//  OnlineShop
//
//  Created by Азат Ибрагимов on 18.08.2024.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    // MARK: - Properties
    @FirestoreQuery(collectionPath: "shop") var items: [Product]
    var columns = Array(repeating: GridItem(), count: 2)
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(items) { item in
                        ProductCardView(product: item)
                    }
                }
            }
            .padding(.horizontal, 10)
            .background(.secondary.opacity(0.2))
            .shadow(color: .black.opacity(0.2), radius: 10, x: 5, y: 8)
            // MARK: - Navigation Bar
            .navigationTitle("Products")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(destination: FavoritesView()) {
                        Image(systemName: "heart.fill")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: CartView()) {
                        Image(systemName: "cart.fill")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
