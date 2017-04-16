//
//  StopsTableViewController.swift
//  MapKitTutorial
//
//  Created by TinoHacks on 4/15/17.
//  Copyright © 2017 Thorn Technologies. All rights reserved.
//

import UIKit

class StopsTableViewController: UITableViewController {
    
    
    
    @IBOutlet weak var numberOfStopsLabel: UILabel!
    var numOfStops: Float = 0
    var numOfOfficialStops = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numberOfStopsSliderChanged(_ sender: UISlider) {
        numOfStops = (sender.value * 5.0).rounded()
        numberOfStopsLabel.text = String(numOfStops)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        print("clicked")
        numOfOfficialStops = Int(numOfStops)
        tableView.reloadData()
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfOfficialStops
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "stopCell", for: indexPath)
     

     
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
