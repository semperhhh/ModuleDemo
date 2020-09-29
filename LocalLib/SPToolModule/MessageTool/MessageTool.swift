//
//  MessageTool.swift
//  SunPigCoach
//
//  Created by zph on 2020/9/8.
//  Copyright © 2020 Wan Hou. All rights reserved.
//

import UIKit
import MessageUI

public class MessageTool: NSObject, MFMessageComposeViewControllerDelegate {
    
    public typealias Callback = ((_ result: MessageComposeResult)->())
    
    var callback: Callback!
    
    @objc public class func messageTest() {
        print("messageTest success ------- 🎉");
    }

    @objc public class func messageSend(viewController: UIViewController, recipients: [String], body: String?, subject: String?, callback: Callback?) -> MessageTool {
        
        let tool: MessageTool = MessageTool()
        tool.callback = callback
        
        if MFMessageComposeViewController.canSendText() {
            let picker = MFMessageComposeViewController()
            picker.messageComposeDelegate = tool
            picker.recipients = recipients
            picker.body = body
            picker.subject = subject
            viewController .present(picker, animated: true, completion: nil)
        }
        
        return tool
    }
    
    public func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
        controller.dismiss(animated: true, completion: nil)
        
        callback(result)
        
        switch result {
        case .cancelled:
            print("取消发送")
        case .failed:
            print("发送失败")
        case .sent:
            print("发送成功")
        default:
            print("未知")
        }
    }
}
