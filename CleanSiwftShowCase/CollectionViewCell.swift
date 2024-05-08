//
//  CollectionViewCell.swift
//  CleanSiwftShowCase
//
//  Created by Aldiyar Aitpayev on 06.05.2024.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "name"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    lazy var surnameLabel: UILabel = {
        let label = UILabel()
        label.text = "surname"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(nameLabel)
        contentView.addSubview(surnameLabel)
        nameLabel.snp.makeConstraints { make in
            make.leading.trailing.top.equalToSuperview()
        }
        surnameLabel.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo(nameLabel.snp.bottom)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
