//
//  ResultViewController.swift
//  gacha
//
//  Created by 笠原未来 on 2019/09/10.
//  Copyright © 2019 笠原未来. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number:Int!
    
    @IBOutlet var bgImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        number = Int(arc4random_uniform(10))
        number = Int.random(in: 0...9)
        
        if number == 9 {
            monsterImageView.image = UIImage(named: "monster010")
            bgImageView.image = UIImage(named: "bg_gold")
        }else{
            monsterImageView.image = UIImage(named: "monster001")
            bgImageView.image = UIImage(named: "bg_red")
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
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
