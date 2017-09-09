//
//  ThirdviewController.swift
//  sampleTabbar
//
//  Created by erica chloe on 2017/09/08.
//  Copyright © 2017年 erica chloe. All rights reserved.
//

import UIKit

class ThirdviewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
       override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
