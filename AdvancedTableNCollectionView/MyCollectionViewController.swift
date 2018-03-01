//
//  MyCollectionViewController.swift
//  AdvancedTableNCollectionView
//
//  Created by Ken Siu on 1/3/2018.
//  Copyright © 2018 Ken Siu. All rights reserved.
//

import UIKit

class MyCollectionViewController: UIViewController {
    
    var collectionView: UICollectionView!
    var numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20].map{ "\($0)" }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        initCollectionView()
    }
    
    func initCollectionView() {
        let layout = MyCollectionViewLayout()
        
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.backgroundColor = .gray
        view.addSubview(collectionView)
        
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension MyCollectionViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as? MyCollectionViewCell else {
            fatalError("no valid MyCollectionViewCell return")
        }
        let number = numbers[indexPath.row]
        cell.configureWith(number: number)
        return cell
    }
}

extension MyCollectionViewController: UICollectionViewDelegate {
    
}

