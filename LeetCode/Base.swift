//
//  Base.swift
//  LeetCode
//
//  Created by 付宗建 on 2019/3/13.
//  Copyright © 2019年 youran. All rights reserved.
//

import Cocoa

class Base: NSObject {
    class func lemonadeChange(_ bills: [Int]) -> Bool {
        var money_5 = 0,money_10 = 0
        var stat = false
        for i in 0...bills.count-1{
            switch bills[i] {
            case 5:
                money_5 = money_5 + 1
                stat = true
                break
            case 10:
                money_10 = money_10 + 1
                if (money_5 >= 1){
                    stat = true
                    money_5 = money_5 - 1
                }else{
                    return false
                }
                break
            default:
                if (money_5 >= 1 && money_10 >= 1){
                    stat = true
                    money_5 = money_5 - 1
                    money_10 = money_10 - 1
                }else if(money_5 >= 3){
                    stat = true
                    money_5 = money_5 - 3
                }else{
                    return false
                }
                break
            }
        }
        return stat
    }
    class func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count-1 {
            for j in i+1..<nums.count{
                if nums[i] + nums[j] == target{
                    return [i,j]
                }
            }
        }
        return []
    }
    class func transpose(_ A: [[Int]]) -> [[Int]] {
        let row = A.count,column = A[0].count
        var result: [[Int]]? = []
        for i in 0..<column{
            var temp: [Int]? = []
            for j in 0..<row{
                temp?.append(A[j][i])
            }
            result?.append(temp!)
        }
        return result!
    }
}
