//
//  DetailViewController.swift
//  MovieViewer
//
//  Created by Donatea Zefi on 2/14/16.
//  Copyright © 2016 Donatea Zefi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

 

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"]
        
        overviewLabel.text = overview as? String
        
        let baseURL = "http://image.tmdb.org/t/p/w500"
        
        if let posterView = movie["poster_path"] as? String
        {
            let imageURL = NSURL (string: baseURL + posterView)
            posterImageView.setImageWithURL(imageURL!)
        }
        
        print(movie)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
