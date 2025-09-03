//
//  FrameworkDetailViewModel.swift
//  AppleFramework
//
//  Created by YangJeongMu on 8/23/25.
//

import Foundation
import Combine

final class FrameworkDetailViewModel {
    
    init(framework: AppleFramework) {
        self.framework = CurrentValueSubject(framework)
    }
    
    let framework: CurrentValueSubject<AppleFramework, Never>
    
    let buttonTapped = PassthroughSubject<AppleFramework, Never>()
    func learnMoreTapped() {
        buttonTapped.send(framework.value)
    }
    
}
