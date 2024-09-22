//
//  ProductCardView.swift
//  OnlineShop
//
//  Created by Азат Ибрагимов on 27.08.2024.
//

import SwiftUI

struct ProductCardView: View {
    
    // MARK: - Properties
    let product: Product
    // MARK: - Body
    var body: some View {
        GeometryReader { geo in
            let size = geo.size
            
            ZStack(alignment: .bottom) {
                ZStack(alignment: .topTrailing) {
                    if let url = URL(string: product.image) {
                        CardImageView(url: url, width: size.width, height: size.height)
                        
                        Button {
                            // action
                        } label: {
                            Image(systemName: "heart.fill")
                                .padding(10)
                                .foregroundColor(product.isFavourite ? .red : .white)
                                .background(.black)
                                .clipShape(Circle())
                                .padding()
                        }
                    }
                }
                VStack(alignment: .leading) {
                    Text(product.name).boldRoundedFont(of: 18)
                        .padding(1)
                        .lineLimit(1)
                    Text("$\(product.price).00").regularRoundedFont(of: 15)
                }
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background.opacity(0.7))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(10)
            }
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
//        .background(.background.opacity(0.5))
//        .padding(10)
    }
}

#Preview {
    ProductCardView(
        product: Product(
            name: "Apple Watch",
            description: "Brand-new watches from Apple",
            image:
            "https://firebasestorage.googleapis.com/v0/b/onlineshop-d70af.appspot.com/o/products%2FAppleWatch.jpg?alt=media&token=7d3c05b6-7793-409e-9d37-c221b9feb23d",
            price: 250,
            isFavourite: true
        )
    )
}
