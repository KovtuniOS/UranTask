//
//  ImageCollectionViewCell.swift
//  UranTestTask
//
//  Created by Mac on 4/14/18.
//  Copyright © 2018 Kovtun. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageUrl: URL? {
        didSet{
            imageView.image = nil
            self.setImage()
        }
    }
}

private extension ImageCollectionViewCell{
    func setImage(){
        if let url = imageUrl{
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let imageData = data{
                    DispatchQueue.main.async {
                        if url == self.imageUrl{
                            if let userImage = UIImage(data: imageData){
                                self.imageView.image = userImage
                            }
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
