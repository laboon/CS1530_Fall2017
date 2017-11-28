# CS1530 - Study Guide - Midterm 2

### Build Systems
* Why use a build system?
* Kinds of tasks involved

### Development Tactics
* Accidental vs Essential Complexity
* Information Hiding and Encapsulation
* Postel's Principle
* Abstractions, Leaky Abstractions, and Spolsky's Law
* Use of final
* Avoiding magic numbers
* Minimizing variable scope
* Side effect partitioning and pure vs impure code

### Quality Assurance
* Internal vs External Quality
* Ways to improve quality
  * Testing, pair programming, code reviews, etc
  * Multi-modal reviews
* Limitations of testing

### Working on Legacy and Other People's Code
* When should you modify legacy code?
* Questions to ask before you do so
* Pinning tests
  * What are they?
  * When do you use them?
  * How do they differ from "regular" unit tests?
* Be able to describe what seams are, and find one in code
* Understand change points
* Understand inflection points
* Understand and be able to implement sprout methods
* Understand and be able to implement wrap methods

### Integration and the Software Pipeline
* Phased vs incremental vs Continuous integration
  * Benefits / downsides of each
* Integration strategies:
  * Top-down
  * Bottom-up
  * Risk-oriented
  * Feature-oriented
* Understand feature toggles

### Programming With Concurrency
* Why use threads?
* Understand Concurrency vs Parallelism
* Understand the differences between processes and threads
* Be able to create use threading in Java
  * Threads vs Runnables
  * Running
  * Starting
  * Joining
* Synchronization
  * Method level
  * On a lock object
* Data race - be able to diagnose/implement
  * Ways to avoid: synchronization, no shared mutable state
* Deadlock - be able to diagnose/implement
* Livelock - be able to diagnose/implement

### Concurrency in Java
* Understand Atomic variables
  * Be able to use appropriately
* What are benefits/drawbacks of using thread-safe collections?

### Trade-Offs in Software Engineering
* Be able to make trade-offs using the "cost/benefit" method described in class
* Be able to distinguish between NECESSARY and NICE-TO-HAVE features and quality attributes
* Understand difference in trade-offs in internal quality vs external quality.  Which are preferable?  When?
