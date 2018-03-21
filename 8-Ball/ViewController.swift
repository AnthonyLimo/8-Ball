//
//  ViewController.swift
//  8-Ball
//
//  Created by Antony Limo on 21/03/2018.
//  Copyright © 2018 Antony Limo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    let imageArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        generateRandomImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askAnything(_ sender: Any) {
        generateRandomImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateRandomImage()
    }
    
    func generateRandomImage () {
        randomBallNumber = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: imageArray[randomBallNumber])
    }
}

