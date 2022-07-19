//
//  ProductRow.swift
//  Shopper
//
//  Created by  Mr.Ki on 19.07.2022.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                Text("$\(product.price)")
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 0.062, saturation: 0.949, brightness: 1.0))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(CartManager())
    }
}
