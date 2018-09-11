//
//  JSONUtility.swift
//  PayrollSystem
//
//  Created by Tasneem on 10/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

func readEmplyeeData(fromFile:String) {
    if let path  = Bundle.main.path(forResource: fromFile, ofType: "json") {
        do {
            print(path)
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            print(data)
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            if let emplyees = jsonResult as? [Any] {
                for employee in emplyees {
                    if let dict = employee as? Dictionary<String, Any> {
                        print(dict["name"])
                    }
                }
            }
        } catch {
            print("Error while reading")
        }
    }
}
