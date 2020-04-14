//
//  ViewController.swift
//  WarCardGame
//
//  Created by Lean Caro on 15/03/2020.
//  Copyright © 2020 Leandro Higa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Left card image connection
    @IBOutlet weak var leftImageView: UIImageView!
    
    // Right card image connection
    @IBOutlet weak var rightImageView: UIImageView!
    
    // Left label connection
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    // Right label connection
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Deal button connection
    @IBAction func dealTapped(_ sender: Any) {
        
        // Generate random number for left card
        let leftNumber = Int.random(in: 2...14)
        
        // Generate random number for right card
        let rightNumber = Int.random(in: 2...14)
        
        // Image card for the left card
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        // Image card for the right card
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        } else if leftNumber < rightNumber {
            
            // Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        } else {
            // Tie
        }
        
    }
    
}

