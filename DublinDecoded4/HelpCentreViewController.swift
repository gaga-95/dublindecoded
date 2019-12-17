//
//  SecondViewController.swift
//  DublinDecoded4
//
//  Created by Garvan Gallagher on 11/12/2019.
//  Copyright © 2019 Garvan Gallagher. All rights reserved.
//

import UIKit
import ZendeskSDK

class HelpCentreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let requestConfig = RequestUiConfiguration()
        requestConfig.subject = "iOS Ticket"
        let helpCenter = HelpCenterUi.buildHelpCenterOverviewUi(withConfigs: [requestConfig])
        self.navigationController?.pushViewController(helpCenter, animated: true)
    }
    
}

