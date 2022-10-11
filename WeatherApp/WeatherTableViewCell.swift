//
//  WeatherTableViewCell.swift
//  WeatherApp
//
//  Created by Roma Test on 11.10.2022.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    static let identifire = "WeatherTableViewCell"
    
    private lazy var containerStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var dayLabel: UILabel = {
        var label = UILabel()
        return label
    }()
    
    lazy var maxMinTemperature: UILabel = {
        var label = UILabel()
        return label
    }()
    
    lazy var iconimageView: UIImageView = {
        var imageView = UIImageView()
        return imageView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configuteContainerStackView()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func configuteContainerStackView() {
        addSubview(containerStackView)
        
        NSLayoutConstraint.activate([
            containerStackView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            containerStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        containerStackView.addArrangedSubview(dayLabel)
        containerStackView.addArrangedSubview(maxMinTemperature)
        containerStackView.addArrangedSubview(iconimageView)
    }
}
