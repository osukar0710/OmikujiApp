//
//  ResultViewController.swift
//  OmikujiApp
//
//  Created by osukar on 2022/10/22.
//

import UIKit

class ResultViewController: UIViewController {
    let imageArray = [
        UIImage(imageLiteralResourceName: "omikuji_daikithi"),
        UIImage(imageLiteralResourceName: "omikuji_tyuukithi"),
        UIImage(imageLiteralResourceName: "omikuji_kithi"),
        UIImage(imageLiteralResourceName: "omikuji_syokithi"),
        UIImage(imageLiteralResourceName: "omikuji.suekithi"),
        UIImage(imageLiteralResourceName: "omikuji_kyo"),
    ]

    @IBOutlet weak var resultViewImage: UIImageView!
    @IBOutlet weak var resultTitle: UILabel!
    
    override func viewDidLoad() {
        resultViewImage.image = imageArray[Int.random(in:0...5)]
        switch resultViewImage.image {
        case imageArray[0]:
            resultTitle.text = "大吉"
        case imageArray[1]:
            resultTitle.text = "中吉"
        case imageArray[2]:
            resultTitle.text = "吉"
        case imageArray[3]:
            resultTitle.text = "小吉"
        case imageArray[4]:
            resultTitle.text = "末吉"
        case imageArray[5]:
            resultTitle.text = "凶"
        default:
            break
        }
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeResultViewbutton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
