//
//  MyPointCell.swift
//  TossBenefitTab
//
//  Created by YangJeongMu on 9/10/25.
//

import UIKit

class MyPointCell: UICollectionViewCell {
    
    @IBOutlet var iconView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var pointLabel: UILabel!
    
    func configure(item: MyPoint) {
        iconView.image = UIImage(named: "ic_point")
        descriptionLabel.text = "내 포인트"
        pointLabel.text = "\(item.point) 원"
    }
    
}
