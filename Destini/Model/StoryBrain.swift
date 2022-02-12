//
//  StoryBrain.swift
//  Destini
//
//  Created by Elchin Nasirov on 2/11/22.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
        title: "You see a fork on the road.",
        choice1: "Take a left.", choice1Destination: 2,
        choice2: "Take a right.", choice2Destination: 1
        ),
        Story(
            title: "You see a tiger.",
            choice1: "Shout for help.", choice1Destination: 2,
            choice2: "Play dead.", choice2Destination: 3
        ),
        Story(
            title: "You find a treasure.",
            choice1: "Open it.", choice1Destination: 5,
            choice2: "check for traps.", choice2Destination: 4
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }

}
