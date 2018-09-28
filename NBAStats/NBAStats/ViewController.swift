//
//  ViewController.swift
//  NBAStats
//
//  Created by Andrew Hwang on 9/28/18.
//  Copyright © 2018 WhiteHaus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    let teams = ["Bulls", "Wizards"]
    var teamsCollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout())
    let reuseID = "teamCell"
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseID, for: indexPath)
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    override func viewWillAppear(_ animated: Bool) {
        loadData()
    }
    
    func loadData() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.frame.width, height: 100)
        
        teamsCollectionView = UICollectionView(frame: CGRect(x: view.frame.width/2, y: view.frame.height/2, width: view.frame.width, height: view.frame.height), collectionViewLayout: layout)
        teamsCollectionView.delegate = self
        teamsCollectionView.dataSource = self
        
    }


}

