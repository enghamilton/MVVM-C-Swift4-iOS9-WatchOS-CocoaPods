//
//  InterfaceController.swift
//  MVVM-C-Swift4-iOS9-WatchOS-CocoaPods WatchKit Extension
//
//  Created by user164900 on 3/4/20.
//  Copyright © 2020 user164900. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var tableView: WKInterfaceTable!
    
    let tableData = ["user 01", "user 02", "user 03"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    private func loadTableData(){
        tableView.setNumberOfRows(tableData.count, withRowType: "RowController")
        
        for(index, rowModel) in tableData.enumerated() {
            if let rowController = tableView.rowController(at: index) as? RowController{
                rowController.rowLabel.setText(rowModel)
            }
        }
    }
}
