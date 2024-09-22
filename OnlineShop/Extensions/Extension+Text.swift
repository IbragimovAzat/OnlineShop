//
//  Extension+Text.swift
//  OnlineShop
//
//  Created by Азат Ибрагимов on 21.09.2024.
//

import SwiftUI

extension Text {
    func boldRoundedFont(of size: CGFloat) -> some View {
        return self
            .foregroundStyle(.primary)
            .font(.system(size: size, weight: .bold, design: .rounded))
            .opacity(0.8)
    }
    func regularRoundedFont(of size: CGFloat) -> some View {
        return self
            .foregroundStyle(.primary)
            .font(.system(size: size, weight: .regular, design: .rounded))
            .opacity(0.8)
    }
}
