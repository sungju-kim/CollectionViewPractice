//
//  ViewController.swift
//  CollectionViewPractice
//
//  Created by dale on 2022/07/04.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {

    private lazy var dataSource: UICollectionViewDataSource = NormalDataSource()
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: LayoutFactory.create())
        collectionView.register(MyCell.self, forCellWithReuseIdentifier: MyCell.identifier)
        collectionView.dataSource = self.dataSource
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

