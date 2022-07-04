//
//  LayoutFactory.swift
//  CollectionViewPractice
//
//  Created by dale on 2022/07/04.
//

import UIKit

enum LayoutFactory {
    static func create() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .estimated(500)
        )

        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(
            top: 0,
            leading: 0,
            bottom: 0,
            trailing: 0
        )

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .estimated(1)
        )
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        group.edgeSpacing = .init(leading: .none, top: .fixed(12), trailing: .none, bottom: .fixed(12))
        let section = NSCollectionLayoutSection(group: group)

        section.boundarySupplementaryItems = [
            NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: .init(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .absolute(1)),
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .topLeading)
        ]

        return UICollectionViewCompositionalLayout(section: section)
    }
}
