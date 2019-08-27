//
//  ViewController.swift
//  Magic Balls 9
//
//  Created by DeEp KapaDia on 29/06/19.
//  Copyright © 2019 DeEp KapaDia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

    var imageIndex : Int = 0
    
    @IBOutlet weak var ballImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomImageGenerator()
        // Do any additional setup after loading the view.
    }

    @IBAction func askButton(_ sender: Any) {
        
        randomImageGenerator()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        randomImageGenerator()
        
    }
    
    func randomImageGenerator(){
        
        imageIndex = Int.random(in: 1 ... 4)
        
        ballImage.image = UIImage(named: ballArray[imageIndex])
        
    }
    
}

