//
//  MyTableViewController.swift
//  AdvancedTableNCollectionView
//
//  Created by Ken Siu on 1/3/2018.
//  Copyright © 2018 Ken Siu. All rights reserved.
//

import UIKit

class MyTableViewController: UIViewController {
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Advanced Table"
        view.backgroundColor = .black
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.identifier)
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension MyTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as? MyTableViewCell else {
            fatalError("No MyTableViewCell is returned")
        }
        
        let article = articles[indexPath.row]
        let bgColor: UIColor = indexPath.row % 2 == 0 ? .gray : .white
        cell.configureWith(article: article, bgColor: bgColor)
        
        return cell
    }
}

extension MyTableViewController: UITableViewDelegate {
    
}
