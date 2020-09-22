//
//  Mediator_Extension.swift
//  ModuleDemo
//
//  Created by zph on 2020/9/22.
//  Copyright © 2020 zph. All rights reserved.
//

import CTMediator

extension CTMediator {
    func A_showSwift(dic: [String: Any], callback: @escaping (String) -> Void) -> UIViewController? {
        
        var params: [String: Any] = dic
        params["callback"] = callback
        params[kCTMediatorParamsKeySwiftTargetModuleName] = "ModuleDemo"
        
        if let controller = self.performTarget("SwiftMediator", action: "Extension_ViewController", params: params, shouldCacheTarget: false) {
            return controller as? UIViewController
        }
        return nil
    }
}
