//
//  ButtonBenefitViewController.swift
//  TossBenefitTab
//
//  Created by YangJeongMu on 9/17/25.
//

import UIKit

class ButtonBenefitViewController: UIViewController {
    
    
    @IBOutlet var ctaButton: UIButton!
    
    
    var benefit: Benefit = .today
    var benefitDetails: BenefitDetails = .default
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ctaButton.layer.masksToBounds = true
        ctaButton.layer.cornerRadius = 5
        
        navigationItem.largeTitleDisplayMode = .never
        
        ctaButton.setTitle(benefit.ctaTitle, for: .normal)
        
    }
}
