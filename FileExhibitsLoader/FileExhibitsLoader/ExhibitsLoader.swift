//
//  ExhibitsLoader.swift
//  FileExhibitsLoader
//
//  Created by Mitya_Potemkin on 4/14/18.
//  Copyright © 2018 Kovtun. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

public protocol IExhibitsLoader {
    func getExhibitList (handler: @escaping ([Exhibit]) -> Void)
}

public struct ExhibitsLoader: IExhibitsLoader {

    private struct Constants {
        static let url = "https://goo.gl/t1qKMS"
    }

    public init(){}

    public func getExhibitList(handler: @escaping ([Exhibit]) -> Void) {
        Alamofire.request(Constants.url, method: .get, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result {
            case .success(let jsonValue):
                let json = JSON(jsonValue)
                if let list = json["list"].array {
                    var exhibits = [Exhibit]()
                    for itemJson in list {
                        if let dictionary = itemJson.dictionaryObject,
                            let title = dictionary["title"] as? String,
                            let images = dictionary["images"] as? [String]{
                                let exhibit = Exhibit(title: title, images: images)
                                exhibits.append(exhibit)
                        }
                    }
                    handler(exhibits)
                }

            case .failure(let error):
                print(error.localizedDescription)
            }
        }

    }
}
