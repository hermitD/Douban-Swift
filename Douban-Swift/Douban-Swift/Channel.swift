/* 
Copyright (c) 2015 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Channel {
	public var update_time : String?
	public var name : String?
	public var background_image : String?
	public var url : String?
	public var type : String?
	public var special_card_icon : String?
	public var related_group_chats_count : Int?
	public var uri : String?
	public var sorted_tabs : Array<Sorted_tabs>?
	public var create_time : String?
	public var color_theme : String?
	public var count_members : Int?
	public var hot_tags : Array<Hot_tags>?
	public var last_content : Last_content?
	public var intro : String?
	public var id : Int?
	public var sharing_url : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let channel_list = Channel.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Channel Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Channel]
    {
        var models:[Channel] = []
        for item in array
        {
            models.append(Channel(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let channel = Channel(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Channel Instance.
*/
	required public init?(dictionary: NSDictionary) {

		update_time = dictionary["update_time"] as? String
		name = dictionary["name"] as? String
		background_image = dictionary["background_image"] as? String
		url = dictionary["url"] as? String
		type = dictionary["type"] as? String
		special_card_icon = dictionary["special_card_icon"] as? String
		related_group_chats_count = dictionary["related_group_chats_count"] as? Int
		uri = dictionary["uri"] as? String
		if (dictionary["sorted_tabs"] != nil) { sorted_tabs = Sorted_tabs.modelsFromDictionaryArray(dictionary["sorted_tabs"] as! NSArray) }
		create_time = dictionary["create_time"] as? String
		color_theme = dictionary["color_theme"] as? String
		count_members = dictionary["count_members"] as? Int
		if (dictionary["hot_tags"] != nil) { hot_tags = Hot_tags.modelsFromDictionaryArray(dictionary["hot_tags"] as! NSArray) }
		if (dictionary["last_content"] != nil) { last_content = Last_content(dictionary: dictionary["last_content"] as! NSDictionary) }
		intro = dictionary["intro"] as? String
		id = dictionary["id"] as? Int
		sharing_url = dictionary["sharing_url"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.update_time, forKey: "update_time")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.background_image, forKey: "background_image")
		dictionary.setValue(self.url, forKey: "url")
		dictionary.setValue(self.type, forKey: "type")
		dictionary.setValue(self.special_card_icon, forKey: "special_card_icon")
		dictionary.setValue(self.related_group_chats_count, forKey: "related_group_chats_count")
		dictionary.setValue(self.uri, forKey: "uri")
		dictionary.setValue(self.create_time, forKey: "create_time")
		dictionary.setValue(self.color_theme, forKey: "color_theme")
		dictionary.setValue(self.count_members, forKey: "count_members")
		dictionary.setValue(self.last_content?.dictionaryRepresentation(), forKey: "last_content")
		dictionary.setValue(self.intro, forKey: "intro")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.sharing_url, forKey: "sharing_url")

		return dictionary
	}

}