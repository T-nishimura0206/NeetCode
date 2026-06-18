//
//  ValidAnagram.swift
//  NeetCode
//
//  Created by 西村太一 on 2026/06/18.
//

//Given two strings s and t, return true if the two strings are anagrams of each other, otherwise return false.
//                                            
//An anagram is a string that contains the exact same characters as another string, but the order of the characters can be different.
//
//Example 1:
//    
//    Input: s = "racecar", t = "carrace"
//
//Output: true
//Example 2:
//    
//    Input: s = "jar", t = "jam"
//
//Output: false

import Foundation

class Solution2 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return s.sorted() == t.sorted()
    }
}
