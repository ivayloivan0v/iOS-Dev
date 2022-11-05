//
//  ViewController.swift
//  StormViewer
//
//  Created by Ivaylo Ivanov on 11/5/22.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Filemanager.default is a built in system type that let us work with the file system
        let fm = FileManager.default
        // Sets the resource path of our app bundle
        let path = Bundle.main.resourcePath!
        // Constant collection of the names of all the files found in the resource directory of our app
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            // .hasPrefix returns true if the file in question starts with "nssl"
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
}

