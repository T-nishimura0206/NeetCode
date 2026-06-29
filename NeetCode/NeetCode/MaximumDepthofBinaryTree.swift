//
//  MaximumDepthofBinaryTree.swift
//  NeetCode
//
//  Created by 西村太一 on 2026/06/29.
//

import Foundation


class Solution10 {
    func maxDepth(_ root: TreeNode?) -> Int {
        
        if root == nil {
            return 0
        }
        
        return 1 + max(maxDepth(root?.left), maxDepth(root?.right))
    }
}
