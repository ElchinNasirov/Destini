//
//  ViewController.swift
//  Destini
//
//  Created by Elchin Nasirov on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
//    @IBOutlet weak var choice1Button: UIButton!
//    @IBOutlet weak var choice2Button: UIButton!
    
    @IBOutlet weak var Choice1Button: UIButton!
    @IBOutlet weak var Choice2Button: UIButton!
    
    let storyBrain = StoryBrain()
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
//        choice1Button.setTitle(stories[0].choice1, for: .normal)
//        choice2Button.setTitle(stories[0].choice2, for: .normal)
    }
}

