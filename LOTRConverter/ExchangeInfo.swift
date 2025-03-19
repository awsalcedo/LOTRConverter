//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by ALEX WLADIMIR SALCEDO SILVA on 18/3/25.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3) // espaciado en tre letra
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                ExchangeRate(exchange: "1 Gold Piece = 4 Gold Pennies", leftImage: .goldpiece, rightImage: .goldpenny)
                
                ExchangeRate(exchange: "1 Gold Penny = 4 Silver Pieces", leftImage: .goldpenny, rightImage: .silverpiece)
                
                ExchangeRate(exchange: "1 Silver Piece = 4 Silver Pennies", leftImage: .silverpiece, rightImage: .silverpenny)
                
                ExchangeRate(exchange: "1 Silver Penny = 100 Copper Pennies", leftImage: .silverpenny, rightImage: .copperpenny)
                
                
                Button {
                    dismiss()
                } label: {
                    Text("Done")
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white) // para anular el color negro que se puso en el VStack para el modo oscuro

            }
            .foregroundStyle(.black) // Para el modo oscuro
        }
    }
}

#Preview {
    ExchangeInfo()
}
