//
//  HotContent.swift
//  Douban-Swift
//
//  Created by Doye on 15/12/22.
//  Copyright © 2015年 d0ye. All rights reserved.
//

import UIKit

//created with http://guideluxe.com/JsonToSwift
//feedback@GuiDeluxe.com
//@PerryTribolet
//usage: var json:HotContents = HotContents.Populate(data:nsdata)
//where nsdata is an NSData object containing the json string

import Foundation

class Loc: NSObject
{
    var id:String = ""
    var name:String = ""
    var uid:String = ""
    
    init(dict: [String: AnyObject]) {
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }
    
}

class Author: NSObject
{
    var loc:Loc?
    var kind:String = ""
    var name:String = ""
    var url:String = ""
    var gender:String = ""
    var avatar:String = ""
    var large_avatar:String = ""
    var type:String = ""
    var id:String = ""
    var uid:String = ""
    
    init(dict: [String: AnyObject]) {
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }
}

class Tag: NSObject
{
    var sharing_url:String = ""
    var name:String = ""
    var uri:String = ""
    
    init(dict: [String: AnyObject]) {
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }
    
}

class Large
{
    var url:String = ""
    var width:Int = 0
    var height:Int = 0
    
    func Populate(dictionary:NSDictionary) {
        
        url = dictionary["url"] as! String
        width = dictionary["width"] as! Int
        height = dictionary["height"] as! Int
    }
    class func PopulateArray(array:NSArray) -> [Large]
    {
        var result:[Large] = []
        for item in array
        {
            var newItem = Large()
            newItem.Populate(item as! NSDictionary)
            result.append(newItem)
        }
        return result
    }
    
}

class Normal
{
    var url:String = ""
    var width:Int = 0
    var height:Int = 0
    
    func Populate(dictionary:NSDictionary) {
        
        url = dictionary["url"] as! String
        width = dictionary["width"] as! Int
        height = dictionary["height"] as! Int
    }
    class func PopulateArray(array:NSArray) -> [Normal]
    {
        var result:[Normal] = []
        for item in array
        {
            var newItem = Normal()
            newItem.Populate(item as! NSDictionary)
            result.append(newItem)
        }
        return result
    }
    
}

class Image
{
    var large:Large?
    var normal:Normal?
    var is_animated:Bool?
    
    func Populate(dictionary:NSDictionary) {
        
        large = dictionary["large"] as! Large
        normal = dictionary["normal"] as! Normal
        is_animated = dictionary["is_animated"] as! Bool
    }
    class func PopulateArray(array:NSArray) -> [Image]
    {
        var result:[Image] = []
        for item in array
        {
            var newItem = Image()
            newItem.Populate(item as! NSDictionary)
            result.append(newItem)
        }
        return result
    }
    
}


class Entity
{
    var start:Int = 0
    var end:Int = 0
    var uri:String = ""
    var title:String = ""
    
    func Populate(dictionary:NSDictionary) {
        
        start = dictionary["start"] as! Int
        end = dictionary["end"] as! Int
        uri = dictionary["uri"] as! String
        title = dictionary["title"] as! String
    }
    class func PopulateArray(array:NSArray) -> [Entity]
    {
        var result:[Entity] = []
        for item in array
        {
            var newItem = Entity()
            newItem.Populate(item as! NSDictionary)
            result.append(newItem)
        }
        return result
    }
    
}


class RecommendComment
{
    var author:Author?
    var text:String = ""
    var entities:[Entity] = []
    var create_time:String = ""
    var images:[Image] = []
    var id:String = ""
    
    func Populate(dictionary:NSDictionary) {
        
        author = dictionary["author"] as! Author
        text = dictionary["text"] as! String
        entities = Entity.PopulateArray(dictionary["entities"] as! [NSArray])
        create_time = dictionary["create_time"] as! String
        images = Image.PopulateArray(dictionary["images"] as! [NSArray])
        id = dictionary["id"] as! String
    }
    class func PopulateArray(array:NSArray) -> [RecommendComment]
    {
        var result:[RecommendComment] = []
        for item in array
        {
            var newItem = RecommendComment()
            newItem.Populate(item as! NSDictionary)
            result.append(newItem)
        }
        return result
    }
    
}

class SortedTab
{
    var query_type:String = ""
    var type:Int = 0
    var name:String = ""
}

class HotTag
{
    var sharing_url:String = ""
    var name:String = ""
    var uri:String = ""
    
    func Populate(dictionary:NSDictionary) {
        
        sharing_url = dictionary["sharing_url"] as! String
        name = dictionary["name"] as! String
        uri = dictionary["uri"] as! String
    }
    class func PopulateArray(array:NSArray) -> [HotTag]
    {
        var result:[HotTag] = []
        for item in array
        {
            var newItem = HotTag()
            newItem.Populate(item as! NSDictionary)
            result.append(newItem)
        }
        return result
    }
    
}



class Channel: NSObject
{
    var update_time:String = ""
    var name:String = ""
    var background_image:String = ""
    var url:String = ""
    var type:String = ""
    var special_card_icon:String = ""
    var related_group_chats_count:Int = 0
    var uri:String = ""
    var sorted_tabs:[SortedTab]?
    var create_time:String = ""
    var color_theme:AnyObject?
    var count_members:Int = 0
    var hot_tags:[HotTag] = []
    var last_content:Content?
    var intro:String = ""
    var id:String = ""
    var sharing_url:String = ""
    
    init(dict: [String: AnyObject]) {
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }
    
    
 }

class Content: NSObject
{
    var update_time:String?
    var sharing_url:String?
    var url:String?
    var text:String?
    var channel_id:String?
    var uri:String?
    var entities:[AnyObject]?
    var reason:Int = 0
    var create_time:String?
    var count_comments:Int = 0
    var count_comments_user:Int = 0
    var type:String?
    var id:String?
    
    var channel:Channel?
    var tag:Tag?
    var author:Author?
    var images:[Image] = []
    var recommend_comments:[RecommendComment] = []
    
    
    init(dict: [String: AnyObject]) {
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    
    
    override func setValue(value: AnyObject?, forKey key: String) {
        if key == "channel" {
            channel = Channel(dict: value as! [String: AnyObject])
        }
        if key == "tag" {
            tag = Tag(dict: value as! [String: AnyObject])
        }
        if key == "author" {
            author = Author(dict: value as! [String: AnyObject])
        }
    }
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }

}

class HotContents: NSObject
{
    var count:Int = 0
    var start:Int = 0
    var rec_channels:[AnyObject]?
    var total:Int = 0
    var rec_position:Int = 0
    var contents:[Content] = []
    
    
    
    
    init(dict: [String: AnyObject]) {
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    
    override func setValue(value: AnyObject?, forKey key: String) {
//        if key == "contents" {
//            contents = (dict: value as! [String: AnyObject])
//            return
//        }
//        if key == "retweeted_status" {
//            retweeted_status = Status(dict: value as! [String: AnyObject])
//            return
//        }
        super.setValue(value, forKey: key)
    }
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }
    
}

