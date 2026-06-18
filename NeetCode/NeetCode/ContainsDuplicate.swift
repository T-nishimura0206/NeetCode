//
//  ContainsDuplicate.swift
//  NeetCode
//
//  Created by 西村太一 on 2026/06/18.
//

import Foundation

//Given an integer array nums, return true if any value appears more than once in the array, otherwise return false.
//                                                
//Example 1:
//    
//    Input: nums = [1, 2, 3, 3]
//
//Output: true
//
//Example 2:
//    
//    Input: nums = [1, 2, 3, 4]
//
//Output: false

class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var existing: [Int] = []
        
        for num in nums {
            if existing.contains(num) {
                return true
            }
            
            existing.append(num)
        }
        
        return false
    }
}
