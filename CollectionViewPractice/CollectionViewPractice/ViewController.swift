//
//  ViewController.swift
//  CollectionViewPractice
//
//  Created by dale on 2022/07/04.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: LayoutFactory.create())
        collectionView.register(MyCell.self, forCellWithReuseIdentifier: MyCell.identifier)
        collectionView.backgroundColor = .blue
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        layoutCollectionView()
    }


}

// MARK: - Layout Section

private extension ViewController {
    func layoutCollectionView() {
        view.addSubview(collectionView)

        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

