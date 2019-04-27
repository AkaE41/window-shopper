//
//  wage.swift
//  window-shopper
//
//  Created by Khaled on 4/25/19.
//  Copyright © 2019 Khaled. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage :Double , andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
