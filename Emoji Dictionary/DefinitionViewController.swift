//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jennifer Hallock on 10/6/17.
//  Copyright © 2017 Jennifer Hallock. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
   
    var emoji = "NO EMOJI"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎"{
        definitionLabel.text = "Cool Dude"
        }
        
        if emoji == "❤️"{
            definitionLabel.text = "Luv Ya"
        }
        
        if emoji == "💩"{
            definitionLabel.text = "Pooh"
        }
        
        if emoji == "😱"{
            definitionLabel.text = "Gosh"
        }
        
        if emoji == "👻"{
            definitionLabel.text = "Boo"
        }
        if emoji == "👠"{
            definitionLabel.text = "Christian Louboutin"
        }
        if emoji == "🐶"{
            definitionLabel.text = "Chloe"
        }
        if emoji == "👍"{
            definitionLabel.text = "You got it"
        }
        if emoji == "😘"{
            definitionLabel.text = "Muah"
        }
        if emoji == "🐧"{
            definitionLabel.text = "Le Penguin"
        }
        if emoji == "🐠"{
            definitionLabel.text = "Fishy"
        }
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
