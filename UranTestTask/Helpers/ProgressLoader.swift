//
//  ProgressLoader.swift
//  RandomNumbers
//
//  Created by Kovtun on 4/13/18.
//  Copyright © 2018 Kovtun. All rights reserved.
//

import Foundation
import SVProgressHUD

class ProgressLoader {
    class func show(with title: String = "Loading") {
        SVProgressHUD.show(withStatus: title)
    }

    class func hide(withCompletion completion: @escaping SVProgressHUDDismissCompletion) {
        SVProgressHUD.dismiss(completion: completion)
    }

    class func hide() {
        SVProgressHUD.dismiss()
    }
}
