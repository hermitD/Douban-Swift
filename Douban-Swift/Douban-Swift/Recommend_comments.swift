/* 
Copyright (c) 2015 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Recommend_comments {
	public var author : Author?
	public var text : String?
	public var entities : Array<String>?
	public var create_time : String?
	public var images : Array<String>?
	public var id : Int?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let recommend_comments_list = Recommend_comments.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Recommend_comments Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Recommend_comments]
    {
        var models:[Recommend_comments] = []
        for item in array
        {
            models.append(Recommend_comments(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let recommend_comments = Recommend_comments(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Recommend_comments Instance.
*/
	required public init?(dictionary: NSDictionary) {

		if (dictionary["author"] != nil) { author = Author(dictionary: dictionary["author"] as! NSDictionary) }
		text = dictionary["text"] as? String
//		if (dictionary["entities"] != nil) { entities = Entities.modelsFromDictionaryArray(dictionary["entities"] as! NSArray) }
		create_time = dictionary["create_time"] as? String
//		if (dictionary["images"] != nil) { images = Images.modelsFromDictionaryArray(dictionary["images"] as! NSArray) }
		id = dictionary["id"] as? Int
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.author?.dictionaryRepresentation(), forKey: "author")
		dictionary.setValue(self.text, forKey: "text")
		dictionary.setValue(self.create_time, forKey: "create_time")
		dictionary.setValue(self.id, forKey: "id")

		return dictionary
	}

}