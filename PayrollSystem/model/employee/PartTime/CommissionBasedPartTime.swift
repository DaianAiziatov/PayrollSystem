//
//  CommissionBasedPartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class CommissionBasedPartTime: PartTime {

    var commissionPerc: Double?
    
    override init() {
        super.init()
        self.commissionPerc = 0.0
    }
    
    init(name: String, age: Int, vehicle: Vehicle?, rate: Double, hoursWorked: Double, commissionPerc: Double) {
        super.init(name: name, age: age, vehicle: vehicle, employeeType: "PTC", rate: rate, hoursWorked: hoursWorked)
        self.commissionPerc = commissionPerc
        self.totalEarnings = calcEarning()
    }
    
    func calcEarning() -> Double {
        return (rate! * hoursWorked!) + (rate! * hoursWorked!) * (commissionPerc! / 100)
    }
    
    override func printMyData() {
        super.printMyData()
        print("Employee is PartTime / Commissioned")
        print(" -Rate: \(rate!)")
        print(" -Hours Worked: \(hoursWorked!)")
        print(" -Commision: \(commissionPerc!)%")
        print(" -Earnings: \(self.totalEarnings!) (\(rate! * hoursWorked!) + \(commissionPerc!)% of \(rate! * hoursWorked!))")
        print("*******************************************")
    }
}
