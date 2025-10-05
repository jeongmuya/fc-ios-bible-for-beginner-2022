//
//  DetailViewModel.swift
//  CarrotHomeTab
//
//  Created by YangJeongMu on 10/5/25.
//

import UIKit
import Combine


final class DetailViewModel {
    
    let network: NetworkService
    let itemInfo: ItemInfo
    
    @Published var itemInfoDetails: ItemInfoDetails? = nil
    
    init(network: NetworkService, itemInfo: ItemInfo) {
        self.network = network
        self.itemInfo = itemInfo
    }
    
    func fetch() {
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.5) {
            self.itemInfoDetails = ItemInfoDetails()
        }
        
//        let resource = Resource<ItemInfoDetails>(
//               base: "",
//               path: "",
//               params: [:],
//               header: [:]
//           )
//        network.load(resource)
//            .receive(on: RunLoop.main)
//            .sink
    }
}
