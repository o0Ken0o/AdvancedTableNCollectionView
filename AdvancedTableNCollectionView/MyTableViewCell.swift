//
//  MyTableViewCell.swift
//  AdvancedTableNCollectionView
//
//  Created by Ken Siu on 1/3/2018.
//  Copyright © 2018 Ken Siu. All rights reserved.
//

import UIKit
import SnapKit

class MyTableViewCell: UITableViewCell {
    static let identifier = "MyTableViewCell"
    
    var articleLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureWith(article: String, bgColor: UIColor) {
        articleLabel.text = article
        articleLabel.backgroundColor = bgColor
    }
    
    private func setupViews() {
        contentView.addSubview(articleLabel)
        articleLabel.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        articleLabel.numberOfLines = 1000
    }
}
