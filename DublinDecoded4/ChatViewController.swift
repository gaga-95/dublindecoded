//
//  ChatViewController.swift
//  DublinDecoded4
//
//  Created by Garvan Gallagher on 11/12/2019.
//  Copyright © 2019 Garvan Gallagher. All rights reserved.
//

import UIKit
import ZendeskSDK
import ZDCChat

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // chat sdk ..
        ZDCChat.start(in: self.navigationController, withConfig: nil)
    }


}
