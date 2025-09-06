//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by YangJeongMu on 9/6/25.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false
    @Published var selectedItem: AppleFramework?
}
