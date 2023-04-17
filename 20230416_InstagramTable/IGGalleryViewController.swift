//
//  IGGalleryViewController.swift
//  20230416_InstagramTable
//
//  Created by Yen Lin on 2023/4/17.
//

import UIKit

class IGGalleryViewController: UIViewController {
    
    var posts = [
        Post(caption: "Sunny day at the beach ☀️🌊", image: "beach.jpg", likes: 128),
        Post(caption: "Hiking in the mountains 🏔️🌲", image: "mountains.jpg", likes: 87),
        Post(caption: "Lazy Sunday morning 🌅☕️", image: "coffee.jpg", likes: 212),
        Post(caption: "Exploring the city streets 🏙️🚶‍♂️", image: "city.jpg", likes: 145),
        Post(caption: "Delicious brunch with friends 🍳🥂", image: "brunch.jpg", likes: 321),
        Post(caption: "Throwback to my trip to Japan 🇯🇵🍜", image: "japan.jpg", likes: 187),
        Post(caption: "Chasing waterfalls in Bali 🌴🌊", image: "waterfalls.jpg", likes: 256),
        Post(caption: "Weekend getaway in the countryside 🌳🌻", image: "countryside.jpg", likes: 98),
        Post(caption: "Celebrating my birthday with cake 🎂🎉", image: "birthday.jpg", likes: 419)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 4
        layout.minimumLineSpacing = 2
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        


    }
    
//    func configureCellSize() {
//            let itemSpace: Double = 4
//            let columnCount: Double = 3
//            let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
//            let width = floor((collectionView.bounds.width - itemSpace * (columnCount-1)) / columnCount)
//            flowLayout?.itemSize = CGSize(width: width, height: width)
//            flowLayout?.estimatedItemSize = .zero
//            flowLayout?.minimumInteritemSpacing = itemSpace
//            flowLayout?.minimumLineSpacing = itemSpace
//
//    }


}

extension IGGalleryViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(IGCollectionViewCell.self)", for: indexPath) as! IGCollectionViewCell
    
        let post = posts[indexPath.item]
        cell.IGCollectionImageView.image = UIImage(named: post.image)
    
        return cell
    }
    
    
    
}
