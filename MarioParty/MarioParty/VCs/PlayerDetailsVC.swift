//
//  playeDetailsVC.swift
//  MarioParty
//
//  Created by ناصر الرشيدي on 7/3/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerDetailsVC : UIViewController{
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var starsImageView: UIImageView!

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var backgroundMusic : AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedPlayer.name
        imageView.image = UIImage(named: selectedPlayer.name)
        backgroundImageView.image = UIImage(named: selectedPlayer.bgName())
        // Do any additional setup after loading the view.
    }

    @IBAction func randomaizeStares(_ sender: Any) {
        var Stars = [" Star1, Star2, Star3, Star4, Star5 "]
    
        let randomStars = Stars.randomElement()!
        starsImageView.image = UIImage(named: randomStars)
    }


     
 
    @IBAction func playCaracterSound(_ sender: Any) {
        
        
        
       playBackgroundMusic(musicName: selectedPlayer.musicName())
        
    }

        func playBackgroundMusic(musicName : String){
            let path = Bundle.main.path(forResource: "musicName", ofType:nil)!
            let url = URL(fileURLWithPath: path)

            do {
                
                backgroundMusic = try AVAudioPlayer(contentsOf: url)
                backgroundMusic!.play()
                
            } catch {
                // couldn't load file :(
            }
            
            
        
    }



}
