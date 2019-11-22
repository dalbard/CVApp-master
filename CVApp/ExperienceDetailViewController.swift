//
//  ExperienceDetailViewController.swift
//  CVApp
//
//  Created by Axel Dalbard on 2019-11-16.
//  Copyright © 2019 Axel Dalbard. All rights reserved.
//

import UIKit

class ExperienceDetailViewController: UIViewController {

    @IBOutlet weak var DetailedImage: UIImageView!
    @IBOutlet weak var DetailedTitle: UILabel!
    @IBOutlet weak var DetailedDuration: UILabel!
    @IBOutlet weak var NavigationTitle: UINavigationItem!
    
    var work: Work = Work(imageName: "", title: "", date: "")
    var education: Education = Education(imageName: "", title: "", date: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(work.title !=  ""){
            NavigationTitle.title = work.title
            DetailedImage.image = UIImage(systemName: work.imageName)
            DetailedTitle.text = work.title
            DetailedDuration.text = work.date
        } else {
            NavigationTitle.title = education.title
            DetailedImage.image = UIImage(systemName: education.imageName)
            DetailedTitle.text = education.title
            DetailedDuration.text = education.date
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
