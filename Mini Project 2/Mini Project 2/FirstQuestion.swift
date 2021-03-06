//
//  FirstQuestion.swift
//  Mini Project 2
//
//  Created by Mengfan Wang on 8/6/20.
//  Copyright © 2020 Mengfan Wang. All rights reserved.
//

import UIKit
import AVFoundation

class FirstQuestion: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var textToChange: UILabel!
    
    @IBOutlet weak var nextQuest: UIButton!
    
    
    @IBAction func first(_ sender: Any) {
        textToChange.text = "It's not plastic!"
    }
    
    @IBAction func second(_ sender: Any) {
         textToChange.text = "It's not glass!"
    }
    
    @IBAction func third(_ sender: Any) {
        textToChange.text = "Yay!"
        nextQuest.isHidden = false
        audioPlayer.play()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuest.isHidden = true
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sound", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        } catch{
            print("error")
        }
       
        // Do any additional setup after loading the view.
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
