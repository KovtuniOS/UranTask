//
//  ExhibitionsListWorker.swift
//  UranTestTask
//
//  Created by Mac on 4/14/18.
//  Copyright (c) 2018 Kovtun. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import FileExhibitsLoader

class ExhibitionsListWorker {

    func fetchExhibits(completion: @escaping ([Exhibit]) -> Void) {
        let loader: IExhibitsLoader = ExhibitsLoader()
        loader.getExhibitList { exhibits in
            completion(exhibits)
        }
    }
}
