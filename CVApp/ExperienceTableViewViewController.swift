//
//  ExperienceTableViewViewController.swift
//  CVApp
//
//  Created by Axel Dalbard on 2019-11-08.
//  Copyright © 2019 Axel Dalbard. All rights reserved.
//

import UIKit

class ExperienceTableViewViewController: UITableViewController {

    @IBOutlet var experienceTableView: UITableView!
    
    var jobs: [Work] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        experienceTableView.delegate = self
        experienceTableView.dataSource = self
        
        for i in 1..<4 {
            let work = Work(imageName: "trash", title:"Work \(i)", date: "2014 - 2015")
            jobs.append(work)
        }
        experienceTableView.reloadData()
    }

}

// MARK: - Table View
extension ExperienceTableViewViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobs.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let nameOfSection = ["Work", "Educaton"]
        return nameOfSection[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WorkCell", for:
            indexPath) as? ExperienceTableViewCell {
            let work = jobs[indexPath.row]
            cell.workImage.image = UIImage(systemName: work.imageName)
            cell.workTitleLabel.text = work.title
            cell.workDurationLabel.text = work.date
            
            return cell
        }
        
        return UITableViewCell()
    }
}
