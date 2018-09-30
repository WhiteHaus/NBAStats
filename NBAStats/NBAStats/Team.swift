//
//  Team.swift
//  NBAStats
//
//  Created by Andrew Hwang on 9/28/18.
//  Copyright © 2018 WhiteHaus. All rights reserved.
//

import UIKit

class Team: UICollectionViewCell {
    var teamName: UILabel!
    
    override init(frame: CGRect) {
        teamName = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: 50))
        super.init(frame: frame)
        teamName.center = CGPoint(x: contentView.frame.width/2, y: contentView.frame.height/2)
        teamName.textAlignment = .center
        self.addSubview(teamName)
        backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
