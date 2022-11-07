module sender::user_info {
  // imports String type from module string that resides on address std.
  // std is an address defined in the transitive std dependency of the AptosFramework dependency
  // and automatically available to all the package code
  use std::string::String;
  
  struct UserProfile has key { username: String }
}