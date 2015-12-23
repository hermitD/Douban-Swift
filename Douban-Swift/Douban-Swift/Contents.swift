/* 
Copyright (c) 2015 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Contents {
	public var update_time : String?
	public var sharing_url : String?
	public var author : Author?
	public var url : String?
	public var text : String?
	public var tag : String?
	public var channel_id : Int?
	public var uri : String?
	public var entities : Array<String>?
	public var reason : Int?
	public var create_time : String?
	public var images : Array<Images>?
	public var recommend_comments : Array<Recommend_comments>?
	public var count_comments : Int?
	public var count_comments_user : Int?
	public var type : String?
	public var id : Int?
	public var channel : Channel?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let contents_list = Contents.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Contents Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Contents]
    {
        var models:[Contents] = []
        for item in array
        {
            models.append(Contents(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let contents = Contents(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Contents Instance.
*/
	required public init?(dictionary: NSDictionary) {

		update_time = dictionary["update_time"] as? String
		sharing_url = dictionary["sharing_url"] as? String
		if (dictionary["author"] != nil) { author = Author(dictionary: dictionary["author"] as! NSDictionary) }
		url = dictionary["url"] as? String
		text = dictionary["text"] as? String
		tag = dictionary["tag"] as? String
		channel_id = dictionary["channel_id"] as? Int
		uri = dictionary["uri"] as? String
//		if (dictionary["entities"] != nil) { entities = Entities.modelsFromDictionaryArray(dictionary["entities"] as! NSArray) }
		reason = dictionary["reason"] as? Int
		create_time = dictionary["create_time"] as? String
		if (dictionary["images"] != nil) { images = Images.modelsFromDictionaryArray(dictionary["images"] as! NSArray) }
		if (dictionary["recommend_comments"] != nil) { recommend_comments = Recommend_comments.modelsFromDictionaryArray(dictionary["recommend_comments"] as! NSArray) }
		count_comments = dictionary["count_comments"] as? Int
		count_comments_user = dictionary["count_comments_user"] as? Int
		type = dictionary["type"] as? String
		id = dictionary["id"] as? Int
		if (dictionary["channel"] != nil) { channel = Channel(dictionary: dictionary["channel"] as! NSDictionary) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.update_time, forKey: "update_time")
		dictionary.setValue(self.sharing_url, forKey: "sharing_url")
		dictionary.setValue(self.author?.dictionaryRepresentation(), forKey: "author")
		dictionary.setValue(self.url, forKey: "url")
		dictionary.setValue(self.text, forKey: "text")
		dictionary.setValue(self.tag, forKey: "tag")
		dictionary.setValue(self.channel_id, forKey: "channel_id")
		dictionary.setValue(self.uri, forKey: "uri")
		dictionary.setValue(self.reason, forKey: "reason")
		dictionary.setValue(self.create_time, forKey: "create_time")
		dictionary.setValue(self.count_comments, forKey: "count_comments")
		dictionary.setValue(self.count_comments_user, forKey: "count_comments_user")
		dictionary.setValue(self.type, forKey: "type")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.channel?.dictionaryRepresentation(), forKey: "channel")

		return dictionary
	}

}