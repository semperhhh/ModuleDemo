//
//  CustomRouteViewController.swift
//  ModuleDemo
//
//  Created by zph on 2020/9/30.
//  Copyright © 2020 zph. All rights reserved.
//

import UIKit

class CustomRouteViewController: UIViewController,CustomRoute {
    
    func jump(title: String, userId: String) {
    
        let navi: UINavigationController = UIApplication.shared.windows.first?.rootViewController as! UINavigationController
        navi.pushViewController(self, animated: true)
        
        self.title = title
        self.userId = userId
    }
    
    var userId: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.red
        print("CustomRouteViewController userid -- ", userId!)
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
