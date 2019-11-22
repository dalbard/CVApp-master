//
//  SkillsViewController.swift
//  CVApp
//
//  Created by Axel Dalbard on 2019-11-17.
//  Copyright © 2019 Axel Dalbard. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    @IBOutlet weak var HelloLabel: UILabel!
    
    @IBAction func Back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
     override func viewWillAppear(_ animated: Bool){
        UIView.animate(withDuration: 2, delay: 0.5, options: .curveEaseInOut, animations: {
            self.HelloLabel.alpha = 1.0
        }, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
