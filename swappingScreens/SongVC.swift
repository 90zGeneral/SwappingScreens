//
//  SongVC.swift
//  swappingScreens
//
//  Created by Roydon Jeffrey on 11/27/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class SongVC: UIViewController {
    
    @IBOutlet var songTitleLabel: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        }set {
            _selectedSong = newValue
        }
    }
    
    
    @IBAction func goBack(_ sender: Any) {
        performSegue(withIdentifier: "goBack", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        songTitleLabel.text = _selectedSong
        view.backgroundColor = UIColor.green
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
