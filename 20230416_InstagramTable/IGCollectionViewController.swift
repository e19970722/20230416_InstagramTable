//
//  IGCollectionViewController.swift
//  20230416_InstagramTable
//
//  Created by Yen Lin on 2023/4/17.
//

import UIKit

//private let reuseIdentifier = "Cell"

class IGCollectionViewController: UICollectionViewController {
    
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

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(IGCollectionViewCell.self)", for: indexPath) as! IGCollectionViewCell
    
        let post = posts[indexPath.item]
        cell.IGCollectionImageView.image = UIImage(named: post.image)
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
