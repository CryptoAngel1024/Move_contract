module sender::user_info {
  use std::string::String;
  
  struct UserProfile has key { username: String }
  
  public fun get_username(user_addr: address): String acquires UserProfile {
    // no need for the semicolon at the end, last expression is the returning one (just like in Rust)
    borrow_global<UserProfile>(user_addr).username
  }
}