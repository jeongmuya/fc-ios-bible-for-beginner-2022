//
//  ItemInfoCell.swift
//  CarrotHomeTab
//
//  Created by YangJeongMu on 10/2/25.
//

import UIKit

class ItemInfoCell: UICollectionViewCell {
    
    @IBOutlet var thumbnail: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var numOfChatLabel: UILabel!
    @IBOutlet var numOfLikeLabel: UILabel!
    
    func configure(item: ItemInfo) {
        titleLabel.text = item.title
        descriptionLabel.text = item.title
        priceLabel.text = "\(formatNumber(item.price))원"
        numOfChatLabel.text = "\(item.numOfChats)"
        numOfLikeLabel.text = "\(item.numOfLikes)"
    }
    
    private func formatNumber(_ price: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let result = formatter.string(from: NSNumber(integerLiteral: price)) ?? ""
        return result
    }
}
