//
//  ItemInfoCell.swift
//  CarrotHomeTab
//
//  Created by YangJeongMu on 10/2/25.
//

import UIKit
import Kingfisher

class ItemInfoCell: UICollectionViewCell {
    
    @IBOutlet var thumbnail: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var numOfChatLabel: UILabel!
    @IBOutlet var numOfLikeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnail.layer.cornerRadius = 10
        thumbnail.layer.masksToBounds = true
        thumbnail.tintColor = .systemGray
    }
    
    func configure(item: ItemInfo) {
        titleLabel.text = item.title
        descriptionLabel.text = item.title
        priceLabel.text = "\(formatNumber(item.price))원"
        
        numOfChatLabel.text = "\(item.numOfChats)"
        numOfLikeLabel.text = "\(item.numOfLikes)"
        
        thumbnail.kf.setImage(
            with: URL(string: item.thumbnailURL)!,
            placeholder: UIImage(systemName: "hands.sparkles.fill")
        )
        
    }
    
    private func formatNumber(_ price: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let result = formatter.string(from: NSNumber(integerLiteral: price)) ?? ""
        return result
    }
}
