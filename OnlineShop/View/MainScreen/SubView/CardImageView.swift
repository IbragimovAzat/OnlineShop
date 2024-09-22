//
//  CardImageView.swift
//  OnlineShop
//
//  Created by Азат Ибрагимов on 27.08.2024.
//

import SwiftUI

struct CardImageView: View {
    // MARK: - Properties
    let url: URL
    let width: CGFloat
    let height: CGFloat
    
    // MARK: - Body
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFill()
                .frame(width: width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        } placeholder: {
            ProgressView()
                .frame(width: width, height: height)
        }
    }
}


