//
//  DefintionViewController.swift
//  emoji dictionary
//
//  Created by Chad Willis on 3/1/18.
//  Copyright © 2018 cmw. All rights reserved.
//

import UIKit

class DefintionViewController: UIViewController {
	
	@IBOutlet weak var defLabel: UILabel!
	@IBOutlet weak var test: UILabel!
	var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		test.text = emoji
		
		if emoji == "😛" {
			defLabel.text = "tounge face"
		}
		if emoji == "👍" {
			defLabel.text = "thumbs up"
		}
		if emoji == "😇" {
			defLabel.text = "halo face"
		}
		if emoji == "😆" {
			defLabel.text = "closed eyes funny face"
		}
		if emoji == "😜" {
			defLabel.text = "winking tounge face"
		}
		if emoji == "😋" {
			defLabel.text = "yummy face"
		}
		if emoji == "😎" {
			defLabel.text = "cool face"
		}
		if emoji == "🤪" {
			defLabel.text = "crazy tounge face"
		}
		if emoji == "💩" {
			defLabel.text = "ta e face"
		}
		if emoji == "💃🏻" {
			defLabel.text = "female dancer"
		}
		
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
}
