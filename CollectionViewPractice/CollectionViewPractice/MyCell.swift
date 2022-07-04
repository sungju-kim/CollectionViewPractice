//
//  MyCell.swift
//  CollectionViewPractice
//
//  Created by dale on 2022/07/04.
//

import UIKit

final class MyCell: UICollectionViewCell {
    static var identifier: String {
        return "\(self)"
    }

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Item"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)

        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        layoutNameLabel()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        layoutNameLabel()
    }
}

// MARK: - Layout Section

private extension MyCell {
    func layoutNameLabel() {
        addSubview(nameLabel)

        nameLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

// MARK: - Providing Function

extension MyCell {
    func configure(with color: UIColor) {
        backgroundColor = color
    }

    func configure(with itemIndex: String) {
        nameLabel.text = "item\(itemIndex)"
    }
}
