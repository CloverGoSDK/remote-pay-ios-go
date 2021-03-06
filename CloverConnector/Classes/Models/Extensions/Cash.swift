
/**
 * Autogenerated by Avro
 *
 * DO NOT EDIT DIRECTLY
 */

import ObjectMapper

extension CLVModels {
  public class Cash {
    
    
    @objc(_TtCCC15CloverConnector9CLVModels4Cash9CashEvent)public class CashEvent: NSObject, NSCoding, Mappable {
      /// The type of event that occured
      public var type_: CLVModels.Cash.Type_? = nil
      /// The amount that was either added, removed of modified by the event
      public var amountChange: Int?
      /// Time at which the event was exectued
      public var timestamp: Int?
      /// Any additional information regarding the event
      public var note: String?
      /// The employee who performed the event
      public var employee: CLVModels.Employees.Employee?
      /// The device that initiated the event
      public var device: CLVModels.Device.Device?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(type_?.rawValue, forKey: "type_")
        aCoder.encode(amountChange, forKey: "amountChange")
        aCoder.encode(timestamp, forKey: "timestamp")
        aCoder.encode(note, forKey: "note")
        aCoder.encode(employee, forKey: "employee")
        aCoder.encode(device, forKey: "device")
      }
      
      required public init(coder aDecoder: NSCoder) {
        if let typeString = (aDecoder.decodeObject(forKey: "type_") as? String) {
            type_ = CLVModels.Cash.Type_(rawValue: typeString)
        }
        amountChange = aDecoder.decodeObject(forKey: "amountChange") as? Int
        timestamp = aDecoder.decodeObject(forKey: "timestamp") as? Int
        note = aDecoder.decodeObject(forKey: "note") as? String
        employee = aDecoder.decodeObject(forKey: "employee") as? CLVModels.Employees.Employee
        device = aDecoder.decodeObject(forKey: "device") as? CLVModels.Device.Device
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        type_ <- map["type"]
        amountChange <- map["amountChange"]
        timestamp <- map["timestamp"]
        note <- map["note"]
        employee <- map["employee"]
        device <- map["device"]
      }
    }
    
    
    
    public enum Type_: String {
      case LOAD
      case TRANSACTION
      case OPEN
      case ADJUSTMENT
      case COUNT
      case UNLOAD
    }
    
  }
}
