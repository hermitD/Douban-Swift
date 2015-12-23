/* 
Copyright (c) 2015 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Author {
	public var loc : Loc?
	public var kind : String?
	public var name : String?
	public var url : String?
	public var gender : String?
	public var avatar : String?
	public var large_avatar : String?
	public var type : String?
	public var id : Int?
	public var uid : Int?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let author_list = Author.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Author Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Author]
    {
        var models:[Author] = []
        for item in array
        {
            models.append(Author(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let author = Author(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Author Instance.
*/
	required public init?(dictionary: NSDictionary) {

		if (dictionary["loc"] != nil) { loc = Loc(dictionary: dictionary["loc"] as! NSDictionary) }
		kind = dictionary["kind"] as? String
		name = dictionary["name"] as? String
		url = dictionary["url"] as? String
		gender = dictionary["gender"] as? String
		avatar = dictionary["avatar"] as? String
		large_avatar = dictionary["large_avatar"] as? String
		type = dictionary["type"] as? String
		id = dictionary["id"] as? Int
		uid = dictionary["uid"] as? Int
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.loc?.dictionaryRepresentation(), forKey: "loc")
		dictionary.setValue(self.kind, forKey: "kind")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.url, forKey: "url")
		dictionary.setValue(self.gender, forKey: "gender")
		dictionary.setValue(self.avatar, forKey: "avatar")
		dictionary.setValue(self.large_avatar, forKey: "large_avatar")
		dictionary.setValue(self.type, forKey: "type")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.uid, forKey: "uid")

		return dictionary
	}

}