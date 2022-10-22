//
//  ViewController.swift
//  Dice-App
//
//  Created by debajit.deb@onsolve.com on 22/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = UIImage(imageLiteralResourceName: "dice1.png")
        diceImageView2.image = UIImage(imageLiteralResourceName: "dice6.png")
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dices: [UIImage] = [
            UIImage(imageLiteralResourceName: "dice1.png"),
            UIImage(imageLiteralResourceName: "dice2.png"),
            UIImage(imageLiteralResourceName: "dice3.png"),
            UIImage(imageLiteralResourceName: "dice4.png"),
            UIImage(imageLiteralResourceName: "dice5.png"),
            UIImage(imageLiteralResourceName: "dice6.png"),
        ]
        
        let randomNumber1: Int = Int.random(in: 0...5)
        let randomNumber2: Int = Int.random(in: 0...5)
        
        diceImageView1.image = dices[randomNumber1]
        diceImageView2.image = dices[randomNumber2]
        
        if (randomNumber1 == 5 && randomNumber1 == randomNumber2) {
            print("Winner!!!")
        }
        
    }

}

