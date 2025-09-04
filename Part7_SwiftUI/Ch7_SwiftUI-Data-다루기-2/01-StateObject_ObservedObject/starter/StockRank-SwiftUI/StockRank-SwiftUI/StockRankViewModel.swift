//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by YangJeongMu on 9/4/25.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
