//
//  NormalDataSource.swift
//  CollectionViewPractice
//
//  Created by dale on 2022/07/04.
//

import UIKit

final class NormalDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCell.identifier, for: indexPath) as? MyCell else { return UICollectionViewCell() }

        switch indexPath.section {
        case 0:
            cell.configure(with: .red)
        case 1:
            cell.configure(with: .green)
        case 2:
            cell.configure(with: .yellow)
        default:
            cell.configure(with: .brown)
        }
        cell.configure(with: "\(indexPath.item)")
        return cell
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
}
