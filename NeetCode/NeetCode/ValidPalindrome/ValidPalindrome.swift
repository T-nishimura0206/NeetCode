//
//  ValidPalindrome.swift
//  NeetCode
//
//  Created by 西村太一 on 2026/06/18.
//

//Given a string s, return true if it is a palindrome, otherwise return false.
//                                    
//A palindrome is a string that reads the same forward and backward. It is also case-insensitive and ignores all non-alphanumeric characters.
//
//Note: Alphanumeric characters consist of letters (A-Z, a-z) and numbers (0-9).
//
//Example 1:
//
//    Input: s = "Was it a car or a cat I saw?"
//
//Output: true
//Explanation: After considering only alphanumerical characters we have "wasitacaroracatisaw", which is a palindrome.
//
//Example 2:
//
//    Input: s = "tab a cat"
//
//Output: false
//Explanation: "tabacat" is not a palindrome.

import Foundation

class Solutio3 {
    func isPalindrome(_ s: String) -> Bool {
        
        let chars = Array(s.lowercased())
        
        var left: Int = 0
        var right: Int = s.count - 1
          
        while left < right {
            if !chars[left].isLetter && !chars[left].isNumber {
                left += 1
                continue
            }
            
            if !chars[right].isLetter && !chars[right].isNumber {
                right += 1
                continue
            }
            
            if chars[left].lowercased() != chars[right].lowercased() {
                return false
            }
            
            left += 1
            right -= 1
        }
        return true
    }
}
