//
//  WeatherTableViewHeader.swift
//  WeatherApp
//
//  Created by Roma Test on 08.10.2022.
//

import UIKit

class WeatherTableViewHeader: UITableViewHeaderFooterView {
    
    static let identifier = "WeatherTableViewHeader"
    var viewModel: WeatherTableViewModel?
    
    private lazy var containerStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var dateLabel: UILabel = {
        var label = UILabel()
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var currentWeatherStackView: CurrentWeatherStackView = {
        var stackView = CurrentWeatherStackView()
        return stackView
    }()
    
    private lazy var hourlyWeatherCollectionView: HourlyWeatherCollectionView = {
        var collectionView = HourlyWeatherCollectionView()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureNavigationBar()
        configuteContainerStackView()
        fill()
    }
    
    convenience init(viewModal: WeatherTableViewModel) {
        self.init(reuseIdentifier: "")
        self.viewModel = viewModal
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureNavigationBar() {
        // if it's possible to make top bar with navBar..
    }
    
    private func configuteContainerStackView() {
        contentView.addSubview(containerStackView)
        
        NSLayoutConstraint.activate([
            containerStackView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            containerStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        containerStackView.addArrangedSubview(dateLabel)
        containerStackView.addArrangedSubview(currentWeatherStackView)
        containerStackView.addArrangedSubview(hourlyWeatherCollectionView)
    }
    
    private func fill() {
        // fill with viewModel
    }
}
