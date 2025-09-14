//
//  TodayBenefitCell.swift
//  TossBenefitTab
//
//  Created by YangJeongMu on 9/10/25.
//

import UIKit

class TodayBenefitCell: UICollectionViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var ctaButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.systemGray.withAlphaComponent(0.3)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10
        
        self.ctaButton.layer.masksToBounds = true
        self.ctaButton.layer.cornerRadius = 5
    }
    
    func configure(item: Benefit) {
        titleLabel.text = item.title
        ctaButton.setTitle(item.ctaTitle, for: .normal)
        
    }
    
}
