//
//  Solution.swift
//  Programmers_Heap_Answer
//
//  Created by Sooyoung Wee on 2/18/25.
//

import Foundation

func solution(_ operations:[String]) -> [Int] {
    
    var result : [Int] = []
    var arr : [Int] = []
    var length : Int = operations.count
    
    for i in 0..<length {
        
        var str1 = operations[i]
        var str2 = str1[str1.startIndex]
        
        if str2 == "I" {
            
            var num = Int(str1.split(separator : " ")[1]) ?? 0
            
            arr.append(num)
            
        } else if str2 == "D" && arr.count > 0 {
            
            var num = Int(str1.split(separator : " ")[1]) ?? 0
            var arrLth = arr.count
            var max = 0
            var maxIdx = 0
            var min = arr[0]
            var minIdx = 0
            
            for j in 0..<arrLth {
                
                if arr[j] > max {
                    
                    max = arr[j]
                    maxIdx = j
                    
                }
                
                if arr[j] < min {
                    
                    min = arr[j]
                    minIdx = j
                    
                }
                
            }
            
            if num > 0 {
                
                arr.remove(at:maxIdx)
                
            } else if num < 0 {
                
                arr.remove(at:minIdx)
                
            }
            
        }
        
    }
    
    if arr.count == 0 {
        
        return [0, 0]
        
    } else {
        
        var max : Int = arr[0]
        var min : Int = arr[0]
        
        for k in 0..<arr.count {
            
            if max < arr[k] {
                
                max = arr[k]
                
            }
            
            if min > arr[k] {
                
                min = arr[k]
                
            }
            
        }
        
        result.append(max)
        result.append(min)
        
    }
    
    return result
}
