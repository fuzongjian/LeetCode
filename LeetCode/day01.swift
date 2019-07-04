//
//  day01.swift
//  LeetCode
//
//  Created by 付宗建 on 2019/7/3.
//  Copyright © 2019年 youran. All rights reserved.
//

import Cocoa

class day01: NSObject {
    
    // 时间复杂度为 n^2
    class func findTwoSum() -> [Int]{
        let sums = [22,2,25,7]
        let target = 9
        let start = CACurrentMediaTime()
        for i in 0..<sums.count-1{
            for j in i+1..<sums.count{
                if sums[i] + sums[j] == target{
                    NSLog("执行时间 === \(CACurrentMediaTime()-start)ms")
                    return [i,j]
                }
            }
        }
        NSLog("执行时间 === \(CACurrentMediaTime()-start)ms")
        return []
    }
    // 哈希表 时间复杂度为n
    class func findTwoSum2() -> [Int]{
        let sums = [22,2,25,7]
        let target = 9
        let start = CACurrentMediaTime()
        var hashmap = [Int:Int]()
        for i in 0...sums.count-1 {
            let value = sums[i]
            let otherValue = target - value
            if(hashmap.keys.contains(otherValue) == true){
                NSLog("执行时间 === \(CACurrentMediaTime()-start)ms")
                return [i,hashmap[otherValue]!]
            }
            hashmap[value] = i
        }
        NSLog("执行时间 === \(CACurrentMediaTime()-start)ms")
        return []
    }
    class func findLengthString() -> Void{
        let startT = CACurrentMediaTime()
        let string = "fuzongjian"
        var ans = 0, start = 0, end = 0
        var characters = Array(string)
        let length = characters.count
        var cache:[Character:Int] = [:]
        while start < length && end < length {
            let char = characters[end]
            // 出现重复的地方,并修改start的值
            if let cacheValue = cache[char]{
                start = max(start, cacheValue)
                NSLog("\(start)")
            }
            end += 1
            ans = max(ans, end-start)
            cache[char] = end
        }
        NSLog("result === \(ans)")
        NSLog("执行时间 === \(CACurrentMediaTime()-startT)ms")
    }
    class func findMiddleNum() -> Void{
        let nums1 = [1,2], nums2 = [3,4]
        let array = nums1 + nums2
        NSLog("\(array)")
    }
}
