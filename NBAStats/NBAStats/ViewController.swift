//
//  ViewController.swift
//  NBAStats
//
//  Created by Andrew Hwang on 9/28/18.
//  Copyright © 2018 WhiteHaus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    let teams = ["Bulls", "Wizards", "Lakers", "Nets", "TimberWolves", "Clippers", "Hornets", "Knicks"]
    var teamsCollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout())
    let reuseID = "teamCell"
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseID, for: indexPath) as! Team
        cell.teamName.text = teams[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(teams[indexPath.item])")
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
        
        teamsCollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height), collectionViewLayout: layout)
        teamsCollectionView.delegate = self
        teamsCollectionView.dataSource = self
        teamsCollectionView.register(Team.self, forCellWithReuseIdentifier: reuseID)
        teamsCollectionView.backgroundColor = UIColor.red
        
        view.addSubview(teamsCollectionView)
    }


}

