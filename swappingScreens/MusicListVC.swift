//
//  MusicListVC.swift
//  swappingScreens
//
//  Created by Roydon Jeffrey on 11/27/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "firstBack", sender: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Thank You Jah by Vybz Kartel"
        performSegue(withIdentifier: "SongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let endPoint = segue.destination as? SongVC {
            if let song = sender as? String {
                endPoint.selectedSong = song
            }
        }
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
