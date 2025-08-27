//
//  StockRankRow.swift
//  StockRank-SwiftUI
//
//  Created by YangJeongMu on 8/27/25.
//

import SwiftUI

struct StockRankRow: View {
    
    var stock: StockModel
    
    var body: some View {
        HStack {
            Text("\(stock.rank)")
                .font(.system(size: 16, weight: .bold, design: .default))
                .frame(width: 30)
                .foregroundStyle(.blue)
            Image("\(stock.imageName)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            VStack(alignment: .leading, spacing: 5) {
                Text("\(stock.name)")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                HStack {
                    Text("\(stock.price) 원")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    Text("\(stock.diff * 100, specifier: "%.2f") %")
                        .font(.system(size: 12))
                        .foregroundColor(stock.diff > 0 ? .red : .blue)
                }
            }
            Spacer()
            
            Image(systemName: "heart.fill")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.gray)
    }
}

#Preview {
    StockRankRow(stock: StockModel.list[2])
}
