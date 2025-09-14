//
//  BenefitCell.swift
//  TossBenefitTab
//
//  Created by YangJeongMu on 9/10/25.
//

import UIKit

class BenefitCell: UICollectionViewCell {
    
    @IBOutlet var benefitImage: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    
    func configure(item: Benefit) {
        benefitImage.image = UIImage(named: item.imageName)
        descriptionLabel.text = item.description
        titleLabel.text = item.title
    }
}
