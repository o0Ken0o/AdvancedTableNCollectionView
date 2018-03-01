//
//  MyCollectionViewCell.swift
//  AdvancedTableNCollectionView
//
//  Created by Ken Siu on 1/3/2018.
//  Copyright © 2018 Ken Siu. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MyCollectionViewCell"
    var myLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(myLabel)
        myLabel.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        myLabel.textAlignment = .center
        myLabel.textColor = .orange
        myLabel.font = UIFont.systemFont(ofSize: 35)
        myLabel.backgroundColor = .white
    }
    
    func configureWith(number: String) {
        myLabel.text = number
    }
}
