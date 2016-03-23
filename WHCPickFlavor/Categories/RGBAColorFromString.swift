//
//  RGBFromString.swift
//  IceCreamShop
//
//  Created by Joshua Greene on 2/12/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import UIKit

func RGB(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
  return RGBA(red, green: green, blue: blue, alpha: 255)
}

func RGBA(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
  return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha/255)
}

extension UIColor {
  
  class func RGBAColorFromString(string: String?) -> UIColor? {
    
    if let string = string {
      
      var components = (string as NSString).componentsSeparatedByString(",")
      
      if components.count == 3 {
        components.append("1.0")
      }
      
      if components.count != 4 {
        return nil
      }
      
      let red = CGFloat(Double(components[0])!) / 255
      let green = CGFloat(Double(components[1])!) / 255
      let blue = CGFloat(Double(components[2])!) / 255
      let alpha = CGFloat(Double(components[3])!) / 255
      return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    return nil
  }
}
