//
//  ColorsViewController.swift
//  Colors
//
//  Created by Sam on 9/27/18.
//  Copyright © 2018 Sam. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let colors = ["red", "orange", "yellow", "green", "blue", "purple","brown"];
    let backgroundColors = [UIColor](arrayLiteral: UIColor.red , UIColor.orange , UIColor.yellow , UIColor.green , UIColor.blue , UIColor.purple , UIColor.brown)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorsCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = backgroundColors[indexPath.row]
        return cell
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
