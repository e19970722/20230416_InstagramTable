//
//  IGViewController.swift
//  20230416_InstagramTable
//
//  Created by Yen Lin on 2023/4/16.
//

import UIKit

class IGViewController: UIViewController {
    
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

        // Do any additional setup after loading the view.
    }
    


}

extension IGViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: IGTableViewCell.reuseIdentifier, for: indexPath) as? IGTableViewCell else {
            fatalError("dequeueReusableCell IGTableViewCell failed")
        }
        
        let post = posts[indexPath.row]
        cell.postImageView.image = UIImage(named: post.image)
        cell.postLikesLabel.text = "\(post.likes) likes"
        cell.postContentLabel.text = post.caption
        
        return cell
    }
    
    
}
