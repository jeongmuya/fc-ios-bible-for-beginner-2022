//
//  MyPoint.swift
//  TossBenefitTab
//
//  Created by YangJeongMu on 9/10/25.
//

import Foundation

struct MyPoint: Hashable {
    var point: Int
}

extension MyPoint {
    static let `default` = MyPoint(point: 0)
}

