//
//  InvertBinaryTree.swift
//  NeetCode
//
//  Created by 西村太一 on 2026/06/28.
//

import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


class Solution9 {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        
        var invertedTree = swap(root)
        
        func swap(_ node: TreeNode?) -> TreeNode? {
            
            if node == nil {
                return nil
            }
            
            let l = node?.left
            let r = node?.right
            
            node?.left = r
            node?.right = l
            
            node?.left = swap(node?.left)
            node?.right = swap(node?.right)
            
            return node
        }
        
        return invertedTree
    }
}
