//
//  SwiftViewController.swift
//  ModuleDemo
//
//  Created by zph on 2020/9/15.
//  Copyright © 2020 zph. All rights reserved.
//

import UIKit
import CTMediator

class SwiftViewController: UIViewController {

    /// 会员id
    @objc var userId: String?
    @objc var navigationTitle: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        self.initStyle()
        
        self.navigationItem.title = self.navigationTitle;
        print("swift userid = ", self.userId ?? "nil");
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let controller = CTMediator.sharedInstance().A_showSwift(dic: ["userId": "swift_mediator"]) { (result) in
            print("swift_mediator - ", result);
        }
        
        self.navigationController?.pushViewController(controller!, animated: true)
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
