% Rust intro
% Luigi Menale @lmenale
% 1. September 2023

# About me

## Language history

::: incremental
- GW Basic
- C
- C++
- Java
- Python
- Rust (2020)
:::

## Roles

* Project Manager:
  * Requirements, Design, Documentation, Implementation, Testing and DevOps
* Scrum Master and Product Owner
* Engineering Manager:
  * People Manager
  * Budget Owner


# Rust

## Why Rust?

::: incremental
* Performance
  - no runtime or garbage collector
  - low-level control
* Reliability
  - Rich type system
  - Ownership model guarantees memory-safety and thread-safety
* Productivity
  - Great documentation and tooling
  - Friendly compiler
:::

::: notes

Rust is blazingly fast and memory-efficient: with no runtime or garbage collector, it can power performance-critical services, run on embedded devices, and easily integrate with other languages.

Rust’s rich type system and ownership model guarantee memory-safety and thread-safety — enabling you to eliminate many classes of bugs at compile-time.

Rust has great documentation, a friendly compiler with useful error messages, and top-notch tooling — an integrated package manager and build tool, smart multi-editor support with auto-completion and type inspections, an auto-formatter, and more.

:::

## History

* Originally developed at Mozilla
* Servo browser engine
* 2015: Version 1.0 
* 2021: The Rust Foundation

::: notes
founding companies: AWS, Huawei, Google, Microsoft, and Mozilla
:::

# Rust Language

## Hello World

```Rust
fn main() {
    println!("Hello world!");
}
```

## Variables

```Rust
let x = 5;
println!("The value of x is: {}", x);
x = 6; // <-- Error: error[E0384]: cannot assign twice to immutable variable `x`
println!("The value of x is: {}", x);
```
. . .

* Type inference
* Immutable by default 

## Mutable variable

```Rust
let mut x = 5;
println!("The value of x is: {}", x);
x = 6;
println!("The value of x is: {}", x);
```

## Data types

* u8, u16, u32, u64
* i8, i16, i32, i64
* f32, f64
* usize, isize
* bool
* Characters, Tuples, Arrays

::: notes
- primary scalar types: integers, floating-point numbers, Booleans, and characters
- primitive compound types: tuples and arrays
:::

## Functions

```Rust
fn area(width: u32, height: u32) -> u32 {
    width * height
}

fn main() {
    println!("area={}", area(4, 3));
}
```

## Control Flow

## `if` Expressions

```Rust
if number % 2 == 0 {
    println!("even");
} else {
    println!("odd");
}
```

## `while` Expressions

```Rust
while number != 0 {
    println!("{}!", number);
    number -= 1;
}
```

## `for` loop

```Rust
for number in 1..4 {
    println!("{}!", number);
}
```

::: notes
example uses value range, could also be an iterator,...
:::

## Structs

```Rust
struct Rectangle {
    width: u32,
    height: u32,
}
```
. . .

Instantiating
```Rust
let rect = Rectangle {
    width: 3,
    height: 4,
};
```

## Methods

```Rust
impl Rectangle {
    fn area(&self) -> u32 {
        self.width * self.height
    }
}
```
. . .

Method call
```Rust
let area = rect.area();
```

## Enums

```Rust
enum ImageType {
    Png,
    Jpeg,
    Tiff,
}
```
. . .

```Rust
let image_type = ImageType::Png;
```

## Enums with data

```Rust
enum Color {
    Rgb(u8, u8, u8),
    Transparent,
}
```
. . .

```Rust
let color = Color::Rgb(255, 0, 0);
```

## `match` control flow operator

```Rust
match color {
    Color::Rgb(r, g, b) => println!("{}/{}/{}", r, g, b),
    Color::Transparent => println!("No Color"),
}
```

## `if let`

```Rust
if let Color::Rgb(r, g, b) = color {
    println!("{}/{}/{}", r, g, b);
}
```

## Generic data types

```Rust
struct Point<T> {
    x: T,
    y: T,
}
```
. . .

```Rust
let integer = Point { x: 5, y: 10 };
let float = Point { x: 1.0, y: 4.0 };
```

## Option

```Rust
enum Option<T> {
    None,
    Some(T),
}
```
. . .

```Rust
if let Some(v) = vec.pop() {
    println!("{}", v);
}
```

## Traits

```Rust
trait Shape {
    fn area(&self) -> u32;
}
```
. . .

```Rust
impl Shape for Rectangle {
    fn area(&self) -> u32 {
        self.width * self.height
    }
}
```

## Closures

```Rust
for i in (1..10).filter(|&x| x % 2 == 0) {
    println!("{}", i);
}
```

::: notes
Functional Language Features: Iterators and Closures
Closures: Anonymous Functions that Can Capture Their Environment
:::

## More

* Modules
* Multi-threading
* `async`/`await`
* Error handling with `Result` type
* `unsafe`
* Efficient C bindings
* Macros

## Derive-Macros

```Rust
#[derive(Serialize)]
struct Rectangle {
    width: u32,
    height: u32,
}
```

## Standard library

* Primitive types
* String, Arc, Mutex, ...
* Container and collections
  - (Vec, HashMap, Iterator, ...)
* I/O: Files, UDP/TCP
* Multithreading
* Macros: println, assert, ...

# Tooling

## Testing & Documentation

* Built-in Testing
* Benchmark tests
* Built-in documentation generator

<https://docs.rs/>

## Cargo package manager

* Manage dependencies
* Format code
* Compile code
* Run application
* Run tests
* Create documentation
* Create packages for publishing
* Extensible

<https://crates.io>


# Learning Rust

## Where to start

* <https://www.rust-lang.org/learn>
* <https://doc.rust-lang.org/stable/book/>
* <https://doc.rust-lang.org/stable/reference/>
* Books, e.g. "Programming Rust" (O’Reilly)

## Advanced

* [The Rust Programming Language](https://doc.rust-lang.org/stable/book/)
* [The Rust Reference](https://doc.rust-lang.org/stable/reference/)
* [The Rustonomicon - The Dark Arts of Advanced and Unsafe Rust Programming](https://doc.rust-lang.org/stable/nomicon/)
* [The Unstable Book](https://doc.rust-lang.org/stable/unstable-book/)
* [The Rust Edition Guide](https://doc.rust-lang.org/edition-guide/)
* [The Rust Async Book](https://rust-lang.github.io/async-book/)
* [Rust Cookbook](https://rust-lang-nursery.github.io/rust-cookbook/)
* [Why Rust?](https://www.oreilly.com/content/why-rust/) - Jim Blandy

## ...

* [The Embedded Rust Book](https://rust-embedded.github.io/book/intro/index.html)
* [The Cargo Book](https://doc.rust-lang.org/stable/cargo/)
* [Rust-101](https://www.ralfj.de/projects/rust-101/main.html) - Ralf Jung
* [Rust Essentials](https://www.packtpub.com/application-development/rust-essentials-second-edition) -  Ivo Balbaert
* [Programming Rust](http://shop.oreilly.com/product/0636920040385.do) - Jim Blandy, Jason Orendorff
* [Mastering Rust - Second Edition](https://www.packtpub.com/application-development/mastering-rust-second-edition) - Rahul Sharma & Vesa Kaihlavirta
* [Refactoring to Rust](https://www.manning.com/books/refactoring-to-rust) - Nate Mara
* [Rust Anthology](https://github.com/brson/rust-anthology) - Brian Anderson

## ...

* [Rust in Action](https://www.manning.com/books/rust-in-action) - Tim McNamara
* [Zero To Production In Rust](https://zero2prod.com) - Luca Palmieri
* [Network Programming in Rust](https://www.packtpub.com/application-development/network-programming-rust) - Abhishek Chanda
* [Learning Rust](https://www.packtpub.com/application-development/learning-rust) -  Paul Johnson, Vesa Kaihlavirta
* [Rust Cookbook](https://www.packtpub.com/application-development/rust-cookbook) -  Vigneshwer Dhinakaran
* [Learning Rust](https://learning-rust.github.io/) - Dumindu Madunuwan
* [A Gentle Introduction To Rust](http://stevedonovan.github.io/rust-gentle-intro/readme.html) - Steve Donovan
* [Step Ahead with Rust](https://www.amazon.com/dp/0999361805/) - Jonathan Creekmore

## ...

* [Rust Programming By Example](https://www.amazon.com/dp/1788390636) - Guillaume Gomez and Antoni Boucher
* [Beginning Rust - From Novice to Professional](https://www.apress.com/us/book/9781484234679) - Carlo Milanesi
* [Hands-On Concurrency with Rust](https://www.amazon.com/dp/1788399978) - Brian Troutwine
* [Hands-On Functional Programming in Rust](https://www.amazon.com/dp/1788839358) - Andrew Johnson
* [Hands-On Rust Effective Learning through 2D Game Development and Play](https://pragprog.com/titles/hwrust/hands-on-rust) - Herbert Wolverson

## ...

* [Hands-On Microservices with Rust](https://www.packtpub.com/web-development/hands-microservices-rust) - Denis Kolodin
* [Hands-On Data Structures and Algorithms with Rust](https://www.packtpub.com/application-development/hands-data-structures-and-algorithms-rust) - Claus Matzinger
* [Rust Standard Library Cookbook](https://www.amazon.com/Rust-Standard-Library-Cookbook-leverage/dp/1788623924) - Daniel Durante, Jan Nils Ferner
* [Rust Quick Start Guide](https://www.amazon.com/Rust-Quick-Start-Guide-programming/dp/1789616700) - Daniel Arbuckle
* [Rust High Performance](https://www.amazon.com/Rust-High-Performance-performance-applications/dp/178839948X) - Iban Eguia Moraza
* [Programming WebAssembly with Rust](https://pragprog.com/book/khrust/programming-webassembly-with-rust) - Kevin Hoffman

## ...

* [Hands-On Microservices with Rust 2018: How To Build Scalable and Reliable RESTful Microservices](https://www.amazon.co.uk/Hands-Microservices-Rust-2018-Scalable/dp/1789342759/ref=sr_1_6?s=books&ie=UTF8&qid=1545340800&sr=1-6&keywords=rust) - Denis Kolodin
* [Hands-On Data Structures and Algorithms with Rust](https://www.packtpub.com/application-development/hands-data-structures-and-algorithms-rust) - Claus Matzinger
* [The Complete Rust Programming Reference Guide: Design, develop, and deploy effective software systems using the advanced constructs of Rust](https://www.amazon.com/Complete-Rust-Programming-Reference-Guide/dp/1838828109) - - Vesa Kaihlavirta, Rahul Sharma, Claus Matzinger

## ...

* [Easy Rust](https://github.com/Dhghomon/easy_rust) - David MacLeod
* [Rust Web Development](https://www.manning.com/books/rust-web-development) - [repo](https://github.com/Rust-Web-Development/code) - Bastian Gruber
* [The Little Book of Rust Books](https://lborb.github.io/book/) - [repo](https://github.com/lborb/book)
* [Rust Servers, Services, and Apps](https://www.manning.com/books/rust-servers-services-and-apps) - Prabhu Eshwarla
* [Code Like a Pro in Rust](https://www.manning.com/books/code-like-a-pro-in-rust) - Brenden Matthews
* [Rust for Rustaceans](https://nostarch.com/rust-rustaceans) - Jon Gjengset

## ...

* [Rust From the Ground Up](https://rftgu.rs/) - Matthew Provost
* [Comprehensive Rust](https://google.github.io/comprehensive-rust/) - Google
* [Rust Atomics and Locks](https://learning.oreilly.com/library/view/-/9781098119430/) - Mara Bos
* [Command-Line Rust](https://www.oreilly.com/library/view/command-line-rust/9781098109424/) - Ken Youens-Clark

## Thank you!

* @[lmenale](https://github.com/lmenale)
* [LinkedIn](https://www.linkedin.com/in/lmenale/)