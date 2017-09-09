//
//  SecondViewController.swift
//  sampleTabbar
//
//  Created by erica chloe on 2017/09/08.
//  Copyright © 2017年 erica chloe. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
            
            //AppDeligateにアクセスするための準備(グローバル変数を使うため)
            let myApp = UIApplication.shared.delegate as! AppDelegate
            
            //グローバル変数myCountの値をカウントアップする
            myApp.myCount += 1
            
            //myCountの値をラベルに表示する
            myLabel.text = "\(myApp.myCount)"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

