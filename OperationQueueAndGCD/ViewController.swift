//
//  ViewController.swift
//  OperationQueueAndGCD
//
//  Created by shubhan.langade on 10/03/23.
//

import UIKit

class ViewController: UIViewController {
let syncManager = SyncManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        syncManager.syncOfflineRecords()
        // Do any additional setup after loading the view.
    }


}

