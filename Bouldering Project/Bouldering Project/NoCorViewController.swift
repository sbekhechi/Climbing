//
//  NoCorViewController.swift
//  Bouldering Project
//
//  Created by Samir Bekhechi on 2/17/20.
//  Copyright © 2020 Samir Bekhechi. All rights reserved.
//

import UIKit

class NoCorViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        imageView.isHidden = true;
        // Do any additional setup after loading the view.
    }

    
    @IBAction func onClickPink(_ sender: UIButton) {
        
        if (imageView.isHidden == true){
            imageView.isHidden = false;
        }
        else if (imageView.isHidden == false){
            imageView.isHidden = true;
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
