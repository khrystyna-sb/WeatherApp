//
//  ViewController.swift
//  WeatherApp
//
//  Created by Roma Test on 07.10.2022.
//

import UIKit

class WeatherViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    private func registerTableView() {
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.register(WeatherTableViewCell.self, forCellReuseIdentifier: WeatherTableViewCell.identifier)
        tableView.register(WeatherTableViewHeader.self, forHeaderFooterViewReuseIdentifier: WeatherTableViewHeader.identifier)
        tableView.separatorStyle = .none
    }

    
}

