//
//  TodaysWeatherStackView.swift
//  WeatherApp
//
//  Created by Roma Test on 10.10.2022.
//

import UIKit

class CurrentWeatherStackView: UIStackView {
        
    lazy var iconImageView: UIImageView = {
        var imageView = UIImageView()
        return imageView
    }()
    
    private lazy var weatherDetailsStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.addArrangedSubview(maxMinTemperatureLabel)
        stackView.addArrangedSubview(humidityLabel)
        stackView.addArrangedSubview(windSpeedLabel)
        return stackView
    }()
    
    lazy var maxMinTemperatureLabel: UILabel = {
        var label = UILabel()
        return label
    }()
    
    lazy var humidityLabel: UILabel = {
        var label = UILabel()
        return label
    }()
    
    lazy var windSpeedLabel: UILabel = {
        var label = UILabel()
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        addSubviews()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        axis = .horizontal
        distribution = .equalCentering
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addSubviews() {
        addArrangedSubview(iconImageView)
        addArrangedSubview(weatherDetailsStackView)
    }
}
