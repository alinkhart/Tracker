//
//  TracksTableViewController.swift
//  Tracker
//
//  Created by alinkhart on 4/15/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

protocol TracksTableViewControllerDelegate: class {
    func didSelectCreateTrack()
    func didSelectTrack()
}

final class TracksTableViewController: UITableViewController, TracksStoryboardInitializable {
    
    weak var delegate: TracksTableViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func CreateTrackButtonTapped(_ sender: Any) {
        delegate?.didSelectCreateTrack()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCellIdentifier", for: indexPath)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectTrack()
    }
}
