//
//  ViewController.swift
//  emoji dictionary
//
//  Created by Chad Willis on 3/1/18.
//  Copyright © 2018 cmw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	@IBOutlet weak var tableA: UITableView!
	
	var emojis = ["😛","👍","😇","😆","😜","😋","😎","🤪","💩","💃🏻"]
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		tableA.dataSource = self
		tableA.delegate = self
		
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return emojis.count
		
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		print(indexPath.row)
		let cell = UITableViewCell()
		cell.textLabel?.text = emojis[indexPath.row]
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		let emoji = emojis[indexPath.row]
		performSegue(withIdentifier: "moveSeque", sender: emoji)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let defVC = segue.destination as! DefintionViewController
		defVC.emoji = sender as! String
		
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
}

