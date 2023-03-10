//
//  SyncManager.swift
//  OperationQueueAndGCD
//
//  Created by shubhan.langade on 10/03/23.
//

import Foundation
struct Employee{
    func syncOfflineEmployeeRecord(){
        print("syncing offline record of employee started")
        Thread.sleep(forTimeInterval: 2)
        print("syncing compelted for employee")
    }
}

struct Department{
    func syncOfflineDepartmentRecord(){
        print("syncing offline record of Department started")
        Thread.sleep(forTimeInterval: 2)
        print("syncing compelted for Department")
    }
}

struct SyncManager{
    func syncOfflineRecords(){
        /*let employeeBlockOperation = BlockOperation()
        employeeBlockOperation.addExecutionBlock {
            let employee = Employee()
            employee.syncOfflineEmployeeRecord()
        }
        
        let departmentBlockOperation = BlockOperation()
        departmentBlockOperation.addExecutionBlock {
            let department = Department()
            department.syncOfflineDepartmentRecord()
        }
        
        let operationQueue = OperationQueue()
        departmentBlockOperation.addDependency(employeeBlockOperation)
        operationQueue.addOperation(employeeBlockOperation)
        operationQueue.addOperation(departmentBlockOperation)*/
        
        let serialQueue = DispatchQueue(label: "Task")
        serialQueue.async {
            let employee = Employee()
            employee.syncOfflineEmployeeRecord()
        }
        serialQueue.async {
            let department = Department()
            department.syncOfflineDepartmentRecord()
        }
    }
}
 
