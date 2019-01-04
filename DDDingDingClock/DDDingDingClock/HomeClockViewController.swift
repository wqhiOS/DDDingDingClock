//
//  HomeClockViewController.swift
//  DDDingDingClock
//
//  Created by wuqh on 2019/1/4.
//  Copyright © 2019 wuqh. All rights reserved.
//

import UIKit

class HomeClockViewController: UIViewController {
    
    private lazy var clockButton: UIButton = {
        let clockButton = UIButton(type: .custom)
        clockButton.setTitle("现在就立即打卡~", for: .normal)
        clockButton.addTarget(self, action: #selector(clockButtonClick), for: .touchUpInside)
        return clockButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        
    }
    
    @objc private func clockButtonClick() {
        let message = RCTextMessage(content: "打卡喽")
        RCIMClient.shared()?.sendMessage(.ConversationType_PRIVATE, targetId: "BNQt/yE+6EV2zV6tYbhwhMxLFy44qvJmbbEHga/UUOKJ6FalfhCiPi6sMyOPySorl2AU/wLf9BD8DcLn+b4AnQ==", content: message, pushContent: nil, pushData: nil, success: { (messageId) in
            print("打卡成功喽")
        }, error: { (errorCode, messageId) in
            print("打卡失败了")
        })
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
