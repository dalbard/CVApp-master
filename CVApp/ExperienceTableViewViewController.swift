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
    
    var educations: [Education] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        experienceTableView.delegate = self
        experienceTableView.dataSource = self
        
        for i in 1..<4 {
            let work = Work(imageName: "trash", title:"Work \(i)", date: "2014 - 2015")
            jobs.append(work)
        }
        
        for i in 1..<3 {
            let education = Education(imageName: "trash", title:"Education \(i)", date: "2018 - Current")
            educations.append(education)
        }
        
        experienceTableView.reloadData()
    }

}

// MARK: - Table View
extension ExperienceTableViewViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
           return 2
       }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
        if section == 0{
            return jobs.count
        }else {
            return educations.count
        }
            
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Work"
        }else{
            return "Education"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WorkCell") as? ExperienceTableViewCell {
            if(indexPath.section == 0){
                let work = jobs[indexPath.row]
                cell.workImage.image = UIImage(systemName: work.imageName)
                cell.workTitleLabel.text = work.title
                cell.workDurationLabel.text = work.date
            }else{
                let education = educations[indexPath.row]
                cell.workImage.image = UIImage(systemName: education.imageName)
                cell.workTitleLabel.text = education.title
                cell.workDurationLabel.text = education.date
            }
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ExperienceDetailViewController {
            if let indexPath = sender as? IndexPath {
                if(indexPath.section == 0){
                    let exp = jobs[indexPath.row]
                    destination.work = exp
                }else {
                    let exp = educations[indexPath.row]
                    destination.education = exp
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue", sender: indexPath)
    }
}
