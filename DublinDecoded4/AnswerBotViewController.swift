//
//  OpenTicketsViewController.swift
//  DublinDecoded4
//
//  Created by Garvan Gallagher on 11/12/2019.
//  Copyright © 2019 Garvan Gallagher. All rights reserved.
//

import UIKit
import ZendeskSDK
import AnswerBotSDK

class AnswerBotViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Button on AnswerBot to launch - coudln't launch it from tabbar
    @IBAction func openAnswerBotViewController(_ sender: Any) {
        let answerBotConfigs = AnswerBotUIConfiguration()
        // NOTE: Currently no configs in the AnswerBotUiConfiguration
        
        let requestUIConfigs = RequestUiConfiguration()
        requestUIConfigs.subject = "AnswerBot Enquiries"
        requestUIConfigs.tags = ["Answer_Bot", "Tag", "iOS"]
        // Requests that are redirected from AB to Support will have the above subject and list of tags
        
        guard let answerBotViewController = AnswerBotUI.buildAnswerBotUI(with: [requestUIConfigs, answerBotConfigs]) else { return }
        self.navigationController?.pushViewController(answerBotViewController, animated: true)
    }
        
}
