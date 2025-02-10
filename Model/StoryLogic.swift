//
//  StoryLogic.swift
//  MyAdventure
//
//  Created by user269556 on 2/10/25.
//

class StoryLogic {
    let stories = [
        Story(text: "You've spilled a man's drink in a rough bar, how do you respond?",
              choice1: "Apologize", choice1Destination: 1,
              choice2: "RUN!", choice2Destination: 2),
        
        Story(text: "The man completely understands and invites you for a drink.",
              choice1: "Accept the invitation", choice1Destination: 3,
              choice2: "No, it's a trap. RUN!!!!", choice2Destination: 4),

        Story(text: "You run but trip at the door. The man catches up.",
              choice1: "Strike the man", choice1Destination: 5,
              choice2: "Beg for mercy", choice2Destination: 6),

        Story(text: "You have a great time with the man, and you become friends. The End.",
              choice1: nil, choice1Destination: nil, choice2: nil, choice2Destination: nil),

        Story(text: "You decline and go about your business, but you live your life with regret for not living a bit more. The End.",
              choice1: nil, choice1Destination: nil, choice2: nil, choice2Destination: nil),

        Story(text: "That's assault, and the man is very upset. Straight to jail for you. The End.",
              choice1: nil, choice1Destination: nil, choice2: nil, choice2Destination: nil),

        Story(text: "The man laughs and tell's you to relax. He's actually a very nice person. You're helped up and the bartender calls you a taxi. The End.",
              choice1: nil, choice1Destination: nil, choice2: nil, choice2Destination: nil)
    ]
}
