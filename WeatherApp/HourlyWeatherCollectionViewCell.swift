//
//  TimeTemperatureCollectionViewCell.swift
//  WeatherApp
//
//  Created by Roma Test on 10.10.2022.
//

import UIKit

class HourlyWeatherCollectionViewCell: UICollectionViewCell {
    
    static let identifire = "HourlyWeatherCollectionViewCell"
    
    private lazy var containerStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var timeLabel: UILabel = {
       var label = UILabel()
        
        return label
    }()
    
    lazy var iconImageView: UIImageView = {
       var imageView = UIImageView()
        
        return imageView
    }()
    
    lazy var temperatureLabel: UILabel = {
       var label = UILabel()
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configuteContainerStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configuteContainerStackView() {
        addSubview(containerStackView)
        
        NSLayoutConstraint.activate([
            containerStackView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            containerStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        containerStackView.addArrangedSubview(timeLabel)
        containerStackView.addArrangedSubview(iconImageView)
        containerStackView.addArrangedSubview(temperatureLabel)
    }}
