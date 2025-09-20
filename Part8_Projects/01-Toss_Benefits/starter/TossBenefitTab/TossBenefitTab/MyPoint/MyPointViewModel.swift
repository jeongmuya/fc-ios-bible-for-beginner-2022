//
//  MyPointViewModel.swift
//  TossBenefitTab
//
//  Created by YangJeongMu on 9/20/25.
//

import Foundation

final class MyPointViewModel {
    @Published var point: MyPoint
    
    init(point: MyPoint) {
        self.point = point
    }
}
