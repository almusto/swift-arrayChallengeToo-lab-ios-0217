//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
                
       // TODO: Implement this function.

      if name == "Billy Crystal" || name == "Meg Ryan" {
        line.insert(name, at: 0)
      } else {
        line.append(name)
      }

      let index = line.index(of: name)
      if line[index!] == "Billy Crystal" {
        return "Welcome Billy Crystal! You can sit wherever you like."
      } else if line[index!] == "Meg Ryan" {
        return "Welcome Meg Ryan! You can sit wherever you like."
      } else if index == 0 {
        return "Welcome \(name), you're first in line!"
      } else {
        return "Welcome \(name), you're number \(index!+1) in line."
      }
      
        
    }
    
    
    // 2
    func nowServing() -> String {
      if line.isEmpty {
        return "There is no one to be served."
      } else {
        let name = line[0]
        line.remove(at: 0)
        return "Now serving \(name)!"
      }
        
        // TODO: Implement this function.

    }
    
    
    // 3
    func lineDescription() -> String {
      var string = "The line is:"
      if line.isEmpty {
        return "The line is currently empty."
      } else {

        for (index, name) in line.enumerated() {
           string.append("\n\(index+1). \(name)")
        }
        return string
      }

        // TODO: Implement this function.

    }
    
}
