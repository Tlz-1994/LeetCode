//
//  max-consecutive-ones.swift
//  LeetCode
//
//  Created by stefanie on 2018/11/8.
//  Copyright © 2018年 LLS. All rights reserved.
//

import Foundation

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
  var findLength = 0
  var localLength = 0
  for num in nums {
    if num == 1 {
      localLength += 1
      findLength = max(findLength, localLength)
    } else {
      localLength = 0
    }
  }
  return findLength
}
