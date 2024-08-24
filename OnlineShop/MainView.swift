//
//  ContentView.swift
//  OnlineShop
//
//  Created by Азат Ибрагимов on 18.08.2024.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    @FirestoreQuery(collectionPath: "shop") var items: [Product]
    var body: some View {
        List {
            ForEach(items) { item in
                HStack {
                    Text(item.name)
                    Text("\(item.price)$")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
