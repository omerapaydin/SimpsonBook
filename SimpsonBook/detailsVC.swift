//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Ömer on 24.12.2023.
//

import UIKit

class detailsVC: UIViewController {

    var selectedSimpson : Simpson?
    
    
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
        
    }
    

  

}
