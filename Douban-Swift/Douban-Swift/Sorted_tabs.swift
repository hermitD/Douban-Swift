/* 
Copyright (c) 2015 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Sorted_tabs {
	public var query_type : String?
	public var type : Int?
	public var name : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let sorted_tabs_list = Sorted_tabs.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Sorted_tabs Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Sorted_tabs]
    {
        var models:[Sorted_tabs] = []
        for item in array
        {
            models.append(Sorted_tabs(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let sorted_tabs = Sorted_tabs(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Sorted_tabs Instance.
*/
	required public init?(dictionary: NSDictionary) {

		query_type = dictionary["query_type"] as? String
		type = dictionary["type"] as? Int
		name = dictionary["name"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.query_type, forKey: "query_type")
		dictionary.setValue(self.type, forKey: "type")
		dictionary.setValue(self.name, forKey: "name")

		return dictionary
	}

}