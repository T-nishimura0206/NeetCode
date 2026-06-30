//
//  DiameterofBinaryTree.swift
//  NeetCode
//
//  Created by 西村太一 on 2026/06/30.
//

import Foundation

class Solution11 {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        
        var answer = 0
        
        func depth(_ node: TreeNode?) -> Int {
            if node == nil {
                return 0
            }
            
            let left = depth(node?.left)
            let right = depth(node?.right)
            
            answer = max(answer, left + right)
            
            return 1 + max(left, right)
        }
        
        depth(root)
        
        return answer
    }
}
