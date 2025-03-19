//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by ALEX WLADIMIR SALCEDO SILVA on 19/3/25.
//

import SwiftUI

struct ExchangeRate: View {
    
    let exchange: String
    let leftImage: ImageResource
    let rightImage: ImageResource
    
    var body: some View {
        HStack{
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(exchange)
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(width: 33)
        }
    }
}

#Preview {
    ExchangeRate(exchange: "1 Gold Piece = 4 Gold Pennies", leftImage: .goldpiece, rightImage: .goldpenny)
}
