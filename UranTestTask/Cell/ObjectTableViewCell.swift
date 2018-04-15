//
//  ObjectTableViewCell.swift
//  UranTestTask
//
//  Created by Mac on 4/14/18.
//  Copyright © 2018 Kovtun. All rights reserved.
//

import UIKit

class ObjectTableViewCell: UITableViewCell {
    @IBOutlet weak var imageCollection: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var imagesUrl: [String]?{
        didSet{
            self.imageCollection.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: false)
            self.imageCollection.reloadData()
        }
    }
    
    fileprivate struct CellConstants{
        
    }
}

extension ObjectTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (imagesUrl ?? [String]()).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:String(describing: ImageCollectionViewCell.self), for: indexPath) as! ImageCollectionViewCell
        if imagesUrl != nil{
            cell.imageUrl = URL(string: imagesUrl![indexPath.row])
        }
        return cell
    }
}

extension ObjectTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = CGFloat(Int((collectionView.bounds.size.width - 40) / 3))
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(10, 10, 10, 10)
    }
}

extension ObjectTableViewCell: UICollectionViewDelegate{
    
}
