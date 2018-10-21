//
//  ColorsViewController.swift
//  Colors
//
//  Created by Sam on 9/27/18.
//  Copyright © 2018 Sam. All rights reserved.
//

import UIKit

struct Color {
    var name: String
    var uiColor: UIColor
}

var colors = [Color(name: "red", uiColor: UIColor.red),
              Color(name: "orange", uiColor: UIColor.orange),
              Color(name: "yellow", uiColor: UIColor.yellow),
              Color(name: "green", uiColor: UIColor.green),
              Color(name: "blue", uiColor: UIColor.blue),
              Color(name: "purple", uiColor: UIColor.purple),
              Color(name: "brown", uiColor: UIColor.brown),
]

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //let colors = ["red", "orange", "yellow", "green", "blue", "purple","brown"];
    //let backgroundColors = [UIColor](arrayLiteral: UIColor.red , UIColor.orange , UIColor.yellow , UIColor.green , UIColor.blue , UIColor.purple , UIColor.brown)
    
    @IBOutlet weak var colorsTableView: UITableView!
    
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
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row
            {
            destination.color = colors[row]
        }
    }


}
