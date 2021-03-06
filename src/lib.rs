extern crate failure;
#[macro_use]
extern crate failure_derive;
extern crate serde;
#[macro_use]
extern crate serde_derive;
extern crate serde_json;

extern crate atom_syndication;
extern crate rss;
extern crate uuid;

pub mod categories;
pub mod error;
pub mod feed;
pub mod toot_list;
