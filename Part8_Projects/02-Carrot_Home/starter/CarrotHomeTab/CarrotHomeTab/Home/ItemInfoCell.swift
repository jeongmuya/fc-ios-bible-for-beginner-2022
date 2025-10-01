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
        priceLabel.text = "\(item.price)원"
        numOfChatLabel.text = "\(item.numOfChats)"
        numOfLikeLabel.text = "\(item.numOfLikes)"
    }
}
