//
//  FirstViewController.swift
//  sampleTabbar
//
//  Created by erica chloe on 2017/09/08.
//  Copyright © 2017年 erica chloe. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    //画面が起動された時１回発動(再度画面が表示された時発動しない)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //画面が表示されるたびに毎回発動
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

