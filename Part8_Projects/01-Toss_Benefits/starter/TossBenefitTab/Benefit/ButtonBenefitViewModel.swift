//
//  ButtonBenefitViewModel.swift
//  TossBenefitTab
//
//  Created by YangJeongMu on 9/20/25.
//

import Foundation

final class ButtonBenefitViewModel {
    
   @Published var benefit: Benefit
   @Published var benefitDetails: BenefitDetails = .default
    
    init(benefit: Benefit) {
        self.benefit = benefit
    }
    
    func fetchDetails() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.benefitDetails = .default
        }
    }
    
}
