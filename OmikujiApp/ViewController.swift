//
//  ViewController.swift
//  OmikujiApp
//
//  Created by osukar on 2022/10/19.
//

import UIKit

class ViewController: UIViewController {
    
    let imageArray = [
        UIImage(imageLiteralResourceName: "omikuji_daikithi"),
        UIImage(imageLiteralResourceName: "omikuji_kithi"),
        UIImage(imageLiteralResourceName: "omikuji_syokithi"),
        UIImage(imageLiteralResourceName: "omikuji_tyuukithi"),
        UIImage(imageLiteralResourceName: "omikuji_syuekithi"),
        UIImage(imageLiteralResourceName: "omikuji_kyo"),
    
    
    ]
    @IBOutlet weak var topViewImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ImageChange(_ sender: UIButton) {
        topViewImage.image = imageArray[Int.random(in: 0...1)]
    }
    
}

