//
//  HomeViweModel.swift
//  CarrotHomeTab
//
//  Created by YangJeongMu on 9/28/25.
//

import Foundation
import Combine


final class HomeViweModel {
    
    let network: NetworkService
    
    @Published var items: [ItemInfo] = []
    var subscriptions = Set<AnyCancellable>()
    
    let itemTapped = PassthroughSubject<ItemInfo, Never>()
    
    init(network: NetworkService) {
        self.network = network
    }
    
    func fetch() {
        let resource: Resource<[ItemInfo]> = Resource(
            base: "https://my-json-server.typicode.com/",
            path: "cafielo/demo/products",
            params: [:],
            header: ["Content-Type": "application/json"]
        )
        network.load(resource)
            .receive(on: RunLoop.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print("--> error: \(error)")
                case .finished:
                    print("--> finished")
                }
            } receiveValue: { items in
                let fixedItems = items.map { item in
                    var newItem = item
                    if item.thumbnailURL.contains("source.unsplash.com") {
                        // postID를 시드로 사용해서 각각 다른 이미지
                        newItem.thumbnailURL = "https://picsum.photos/300/300?random=\(item.postID)"
                        print("URL 교체됨: \(item.title)")
                    }
                    return newItem
                }
                
                // 교체된 데이터로 저장
                self.items = fixedItems
            }.store(in: &subscriptions)
        
    }
    
    
}
    
    
    
//    func fetch() {
//        let resource: Resource<[ItemInfo]> = Resource(
//                base: "https://my-json-server.typicode.com/",
//                path: "cafielo/demo/products",
//                params: [:],
//                header: ["Content-Type": "application/json"]
//                  )
//        network.load(resource)
//            .receive(on: RunLoop.main)
//            .sink { completion in
//                switch completion {
//                case .failure(let error):
//                    print("--> error: \(error)")
//                case .finished:
//                    print("--> finished")
//                }
//            } receiveValue: { items  in
//                self.items = items
//            }.store(in: &subscriptions)
//    }
// }
