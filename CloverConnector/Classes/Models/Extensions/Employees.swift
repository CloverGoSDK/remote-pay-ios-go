
/**
 * Autogenerated by Avro
 *
 * DO NOT EDIT DIRECTLY
 */

import ObjectMapper

extension CLVModels {
  public class Employees {
    
    
    public enum AccountRole: String {
      case ADMIN
      case MANAGER
      case EMPLOYEE
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Employees8Employee)public class Employee: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      /// Full name of the employee
      public var name: String?
      /// Nickname of the employee (shows up on receipts)
      public var nickname: String?
      /// Custom ID of the employee
      public var customId: String?
      /// Email of the employee (optional)
      public var email: String?
      /// Returns true if this employee was sent an invite to activate their account
      public var inviteSent: Bool?
      /// Timestamp of when this employee claimed their account
      public var claimedTime: Date?
      /// Timestamp of when this employee was deleted
      public var deletedTime: Date?
      /// Employee PIN (hashed)
      public var pin: String?
      /// Employee PIN
      public var unhashedPin: String?
      /// Employee System Role
      public var role: CLVModels.Employees.AccountRole? = nil
      public var roles: [CLVModels.Employees.Role]?
      /// Returns true if this employee is the owner account for this merchant
      public var isOwner: Bool?
      /// This employee's shifts
      public var shifts: [CLVModels.Employees.Shift]?
      /// This employee's payments
      public var payments: [CLVModels.Payments.Payment]?
      /// This employee's orders
      public var orders: [CLVModels.Order.Order]?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(name, forKey: "name")
        aCoder.encode(nickname, forKey: "nickname")
        aCoder.encode(customId, forKey: "customId")
        aCoder.encode(email, forKey: "email")
        aCoder.encode(inviteSent, forKey: "inviteSent")
        aCoder.encode(claimedTime, forKey: "claimedTime")
        aCoder.encode(deletedTime, forKey: "deletedTime")
        aCoder.encode(pin, forKey: "pin")
        aCoder.encode(unhashedPin, forKey: "unhashedPin")
        aCoder.encode(role?.rawValue, forKey: "role")
        aCoder.encode(roles, forKey: "roles")
        aCoder.encode(isOwner, forKey: "isOwner")
        aCoder.encode(shifts, forKey: "shifts")
        aCoder.encode(payments, forKey: "payments")
        aCoder.encode(orders, forKey: "orders")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        name = aDecoder.decodeObject(forKey: "name") as? String
        nickname = aDecoder.decodeObject(forKey: "nickname") as? String
        customId = aDecoder.decodeObject(forKey: "customId") as? String
        email = aDecoder.decodeObject(forKey: "email") as? String
        inviteSent = aDecoder.decodeObject(forKey: "inviteSent") as? Bool
        claimedTime = aDecoder.decodeObject(forKey: "claimedTime") as? Date
        deletedTime = aDecoder.decodeObject(forKey: "deletedTime") as? Date
        pin = aDecoder.decodeObject(forKey: "pin") as? String
        unhashedPin = aDecoder.decodeObject(forKey: "unhashedPin") as? String
        if let roleString = (aDecoder.decodeObject(forKey: "role") as? String) {
            role = CLVModels.Employees.AccountRole(rawValue: roleString)
        }
        roles = aDecoder.decodeObject(forKey: "roles") as? [CLVModels.Employees.Role]
        isOwner = aDecoder.decodeObject(forKey: "isOwner") as? Bool
        shifts = aDecoder.decodeObject(forKey: "shifts") as? [CLVModels.Employees.Shift]
        payments = aDecoder.decodeObject(forKey: "payments") as? [CLVModels.Payments.Payment]
        orders = aDecoder.decodeObject(forKey: "orders") as? [CLVModels.Order.Order]
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        name <- map["name"]
        nickname <- map["nickname"]
        customId <- map["customId"]
        email <- map["email"]
        inviteSent <- map["inviteSent"]
        claimedTime <- (map["claimedTime"], CLVDateTransform())
        deletedTime <- (map["deletedTime"], CLVDateTransform())
        pin <- map["pin"]
        unhashedPin <- map["unhashedPin"]
        role <- map["role"]
        roles <- map["roles.elements"]
        isOwner <- map["isOwner"]
        shifts <- map["shifts.elements"]
        payments <- map["payments.elements"]
        orders <- map["orders.elements"]
      }
    }
    
    
    
    public enum Permission: String {
      case ORDERS_R
      case ORDERS_W
      case INVENTORY_R
      case INVENTORY_W
      case PAYMENTS_R
      case PAYMENTS_W
      case CUSTOMERS_R
      case CUSTOMERS_W
      case EMPLOYEES_R
      case EMPLOYEES_W
      case MERCHANT_R
      case MERCHANT_W
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Employees11Permissions)public class Permissions: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      /// A bitmap representing the permissions
      public var bits: Int?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(bits, forKey: "bits")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        bits = aDecoder.decodeObject(forKey: "bits") as? Int
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        bits <- map["bits"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Employees13PermissionSet)public class PermissionSet: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      /// Key of the permissionSet
      public var name: String?
      /// Label of the permissionSet
      public var label: String?
      public var app: CLVModels.Apps.App?
      public var employeeDefault: Bool?
      public var managerDefault: Bool?
      /// Bitmap of permissions
      public var permissions: CLVModels.Employees.Permissions?
      /// roles enabled for this merchant
      public var roles: [CLVModels.Employees.Role]?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(name, forKey: "name")
        aCoder.encode(label, forKey: "label")
        aCoder.encode(app, forKey: "app")
        aCoder.encode(employeeDefault, forKey: "employeeDefault")
        aCoder.encode(managerDefault, forKey: "managerDefault")
        aCoder.encode(permissions, forKey: "permissions")
        aCoder.encode(roles, forKey: "roles")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        name = aDecoder.decodeObject(forKey: "name") as? String
        label = aDecoder.decodeObject(forKey: "label") as? String
        app = aDecoder.decodeObject(forKey: "app") as? CLVModels.Apps.App
        employeeDefault = aDecoder.decodeObject(forKey: "employeeDefault") as? Bool
        managerDefault = aDecoder.decodeObject(forKey: "managerDefault") as? Bool
        permissions = aDecoder.decodeObject(forKey: "permissions") as? CLVModels.Employees.Permissions
        roles = aDecoder.decodeObject(forKey: "roles") as? [CLVModels.Employees.Role]
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        name <- map["name"]
        label <- map["label"]
        app <- map["app"]
        employeeDefault <- map["employeeDefault"]
        managerDefault <- map["managerDefault"]
        permissions <- map["permissions"]
        roles <- map["roles.elements"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Employees17PermissionSetRole)public class PermissionSetRole: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      /// The role
      public var role: CLVModels.Employees.Role?
      /// The role
      public var permissionSet: CLVModels.Employees.PermissionSet?
      public var modified_time: Int?
      public var deleted_time: Int?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(role, forKey: "role")
        aCoder.encode(permissionSet, forKey: "permissionSet")
        aCoder.encode(modified_time, forKey: "modified_time")
        aCoder.encode(deleted_time, forKey: "deleted_time")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        role = aDecoder.decodeObject(forKey: "role") as? CLVModels.Employees.Role
        permissionSet = aDecoder.decodeObject(forKey: "permissionSet") as? CLVModels.Employees.PermissionSet
        modified_time = aDecoder.decodeObject(forKey: "modified_time") as? Int
        deleted_time = aDecoder.decodeObject(forKey: "deleted_time") as? Int
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        role <- map["role"]
        permissionSet <- map["permissionSet"]
        modified_time <- map["modified_time"]
        deleted_time <- map["deleted_time"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Employees4Role)public class Role: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      /// Full name of the role
      public var name: String?
      /// Base System Role
      public var systemRole: CLVModels.Employees.AccountRole? = nil
      /// employees with this role
      public var employeesRef: [CLVModels.Employees.Employee]?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(name, forKey: "name")
        aCoder.encode(systemRole?.rawValue, forKey: "systemRole")
        aCoder.encode(employeesRef, forKey: "employeesRef")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        name = aDecoder.decodeObject(forKey: "name") as? String
        if let systemRoleString = (aDecoder.decodeObject(forKey: "systemRole") as? String) {
            systemRole = CLVModels.Employees.AccountRole(rawValue: systemRoleString)
        }
        employeesRef = aDecoder.decodeObject(forKey: "employeesRef") as? [CLVModels.Employees.Employee]
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        name <- map["name"]
        systemRole <- map["systemRole"]
        employeesRef <- map["employeesRef.elements"]
      }
    }
    
    
    
    @objc(_TtCCC15CloverConnector9CLVModels9Employees5Shift)public class Shift: NSObject, NSCoding, Mappable {
      /// Unique identifier
      public var id: String?
      /// The employee that worked this shift
      public var employee: CLVModels.Employees.Employee?
      /// Amount of cash tips collected
      public var cashTipsCollected: Int?
      /// Whether the employee used server banking
      public var serverBanking: Bool?
      /// Clock in time
      public var inTime: Date?
      /// Overridden clock in time
      public var overrideInTime: Date?
      /// The employee who overrode the clock in time
      public var overrideInEmployee: CLVModels.Employees.Employee?
      /// Clock out time
      public var outTime: Date?
      /// Overridden clock out time
      public var overrideOutTime: Date?
      /// The employee who overrode the clock out time
      public var overrideOutEmployee: CLVModels.Employees.Employee?
      
      public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(employee, forKey: "employee")
        aCoder.encode(cashTipsCollected, forKey: "cashTipsCollected")
        aCoder.encode(serverBanking, forKey: "serverBanking")
        aCoder.encode(inTime, forKey: "inTime")
        aCoder.encode(overrideInTime, forKey: "overrideInTime")
        aCoder.encode(overrideInEmployee, forKey: "overrideInEmployee")
        aCoder.encode(outTime, forKey: "outTime")
        aCoder.encode(overrideOutTime, forKey: "overrideOutTime")
        aCoder.encode(overrideOutEmployee, forKey: "overrideOutEmployee")
      }
      
      required public init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? String
        employee = aDecoder.decodeObject(forKey: "employee") as? CLVModels.Employees.Employee
        cashTipsCollected = aDecoder.decodeObject(forKey: "cashTipsCollected") as? Int
        serverBanking = aDecoder.decodeObject(forKey: "serverBanking") as? Bool
        inTime = aDecoder.decodeObject(forKey: "inTime") as? Date
        overrideInTime = aDecoder.decodeObject(forKey: "overrideInTime") as? Date
        overrideInEmployee = aDecoder.decodeObject(forKey: "overrideInEmployee") as? CLVModels.Employees.Employee
        outTime = aDecoder.decodeObject(forKey: "outTime") as? Date
        overrideOutTime = aDecoder.decodeObject(forKey: "overrideOutTime") as? Date
        overrideOutEmployee = aDecoder.decodeObject(forKey: "overrideOutEmployee") as? CLVModels.Employees.Employee
      }
      
      override public init() {}
      
      // Mappable
      
      required public init?(map:Map) {}
      
      public func mapping(map:Map) {
        id <- map["id"]
        employee <- map["employee"]
        cashTipsCollected <- map["cashTipsCollected"]
        serverBanking <- map["serverBanking"]
        inTime <- (map["inTime"], CLVDateTransform())
        overrideInTime <- (map["overrideInTime"], CLVDateTransform())
        overrideInEmployee <- map["overrideInEmployee"]
        outTime <- (map["outTime"], CLVDateTransform())
        overrideOutTime <- (map["overrideOutTime"], CLVDateTransform())
        overrideOutEmployee <- map["overrideOutEmployee"]
      }
    }
    
  }
}