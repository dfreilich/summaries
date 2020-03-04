<!-- omit in toc -->
# [Clean Code](https://amzn.to/37kjAOd)
> *By Robert Martin*

Table of Contents:

<!-- toc -->

- [Summary](#summary)
- [Key Parts:](#key-parts)
- [Chapter 1: Clean Code](#chapter-1-clean-code)
- [Chapter 2: Meaningful Names](#chapter-2-meaningful-names)
- [Chapter 3: Functions](#chapter-3-functions)
- [Chapter 4: Comments](#chapter-4-comments)
- [Chapter 5: Formatting](#chapter-5-formatting)
- [Chapter 6: Objects and Data Structures](#chapter-6-objects-and-data-structures)
- [Chapter 7: Error Handling](#chapter-7-error-handling)
- [Chapter 8: Boundaries](#chapter-8-boundaries)
- [Chapter 9: Unit Tests](#chapter-9-unit-tests)
- [Chapter 10: Classes](#chapter-10-classes)
- [Chapter 11: Systems](#chapter-11-systems)
- [Chapter 12: Emergenece](#chapter-12-emergenece)
- [Chapter 13: Concurrency](#chapter-13-concurrency)
- [Chapter 14: Successive Refinement](#chapter-14-successive-refinement)
- [Chapter 15: JUnit Internals](#chapter-15-junit-internals)
- [Chapter 16: Refactoring SerialDate](#chapter-16-refactoring-serialdate)
- [Chapter 17: Smells and Heuristics](#chapter-17-smells-and-heuristics)
  - [Comments:](#comments)
    - [C1: Innappropriate Information](#c1-innappropriate-information)
    - [C2: Obsolete Comment](#c2-obsolete-comment)
    - [C3: Redundant Comment](#c3-redundant-comment)
    - [C4: Poorly Written Comment](#c4-poorly-written-comment)
    - [C5: Commented-Out Code](#c5-commented-out-code)
  - [Environment](#environment)
    - [E1: Build Requires More Than One Step](#e1-build-requires-more-than-one-step)
    - [E2: Tests Require More Than One Step](#e2-tests-require-more-than-one-step)
  - [Functions](#functions)
    - [F1: Too Many Arguments](#f1-too-many-arguments)
    - [F2: Output Arguments](#f2-output-arguments)
    - [F3: Flag Arguments](#f3-flag-arguments)
    - [F4: Dead Function](#f4-dead-function)
  - [General](#general)
    - [G1: Multiple Languages in One Source File](#g1-multiple-languages-in-one-source-file)
    - [G2: Obvious Behavior is Unimplemented](#g2-obvious-behavior-is-unimplemented)
    - [G3: Incorrect Behavior at Boundaries](#g3-incorrect-behavior-at-boundaries)
    - [G4: Overridden Safeties](#g4-overridden-safeties)
    - [G5: Duplication](#g5-duplication)
    - [G6: Code at Wrong Level of Abstraction](#g6-code-at-wrong-level-of-abstraction)
    - [G7: Base Classes Depending on Their Derivatives](#g7-base-classes-depending-on-their-derivatives)
    - [G8: Too Much Information](#g8-too-much-information)
    - [G9: Dead Code](#g9-dead-code)
    - [G10: Vertical Separation](#g10-vertical-separation)
    - [G11: Inconsistency](#g11-inconsistency)
    - [G12: Clutter](#g12-clutter)
    - [G13: Artificial Coupling](#g13-artificial-coupling)
    - [G14: Feature Envy](#g14-feature-envy)
    - [G15: Selector Arguments](#g15-selector-arguments)
    - [G16: Obscured Intent](#g16-obscured-intent)
    - [G17: Misplaced Responsibility](#g17-misplaced-responsibility)
    - [G18: Inappropriate Static](#g18-inappropriate-static)
    - [G19: Use Explanatory Variables](#g19-use-explanatory-variables)
    - [G20: Function Names Should Say What They Do](#g20-function-names-should-say-what-they-do)
    - [G21: Understand the Algorithm](#g21-understand-the-algorithm)
    - [G22: Make Logical Dependencies Physical](#g22-make-logical-dependencies-physical)
    - [G23: Prefer Polymorphism to If/Else or Switch/Case](#g23-prefer-polymorphism-to-ifelse-or-switchcase)
    - [G24: Follow Standard Conventions](#g24-follow-standard-conventions)
    - [G25: Replace Magic Numbers with Named Constants](#g25-replace-magic-numbers-with-named-constants)
    - [G26: Be Precise](#g26-be-precise)
    - [G27: Structure over Convention](#g27-structure-over-convention)
    - [G28: Encapsulate Conditionals](#g28-encapsulate-conditionals)
    - [G29: Avoid Negative Conditionals](#g29-avoid-negative-conditionals)
    - [G30: Functions Should Do One Thing](#g30-functions-should-do-one-thing)
    - [G31: Hidden Temporal Coupling](#g31-hidden-temporal-coupling)
    - [G32: Don't Be Arbitrary](#g32-dont-be-arbitrary)
    - [G33: Encapsulate Boundary Conditions](#g33-encapsulate-boundary-conditions)
    - [G34: Functions Should Descend Only 1 Level of Abstraction](#g34-functions-should-descend-only-1-level-of-abstraction)
    - [G35: Keep Configurable Data at High Levels](#g35-keep-configurable-data-at-high-levels)
    - [G36: Avoid Transitive Navigation (Law of Demeter/Shy Code)](#g36-avoid-transitive-navigation-law-of-demetershy-code)
  - [Java](#java)
    - [J1: Avoid Long Import Lists by Using Wildcards](#j1-avoid-long-import-lists-by-using-wildcards)
    - [J2: Don't Inherit Constants](#j2-dont-inherit-constants)
    - [J3: Constants vs Enums](#j3-constants-vs-enums)
  - [Names](#names)
    - [N1: Choose Descriptive Names](#n1-choose-descriptive-names)
    - [N2: Choose Names at the Appropriate Level of Abstraction](#n2-choose-names-at-the-appropriate-level-of-abstraction)
    - [N3: Use Standard Nomenclature Where Possible](#n3-use-standard-nomenclature-where-possible)
    - [N4: Unambiguous Names](#n4-unambiguous-names)
    - [N5: Use Long Names for Long Scopes](#n5-use-long-names-for-long-scopes)
    - [N6: Avoid Encodings](#n6-avoid-encodings)
    - [N7: Names Should Describe Side Effects](#n7-names-should-describe-side-effects)
  - [Tests](#tests)
    - [T1: Insufficient Tests](#t1-insufficient-tests)
    - [T2: Use a Coverage Tool](#t2-use-a-coverage-tool)
    - [T3: Don't Skip Trivial Tests](#t3-dont-skip-trivial-tests)
    - [T4: An Ignored Test is a Question about an Ambiguity](#t4-an-ignored-test-is-a-question-about-an-ambiguity)
    - [T5: Test Boundary Conditions](#t5-test-boundary-conditions)
    - [T6: Exhaustively Test Near Bugs](#t6-exhaustively-test-near-bugs)
    - [T7: Patterns of Failure are Revealing](#t7-patterns-of-failure-are-revealing)
    - [T8: Test Coverage Patterns can be Revealing](#t8-test-coverage-patterns-can-be-revealing)
    - [T9: Tests Should Be Fast](#t9-tests-should-be-fast)
- [Best Quotes](#best-quotes)
  - [Chapter 1: Clean Code](#chapter-1-clean-code-1)
  - [Chapter 17: Smells and Heuristics](#chapter-17-smells-and-heuristics-1)

<!-- tocstop -->

---

 ## Summary
Clean Code is an incredibly rich depiction of best practices in Agile software craftsmanship. Robert Martin, together with a number of other famed Software Engineers and Architects, take you point by point through a vast number of heuristics and best practices in creating good, solid, clean code. Through a number of refactoring exercises, Clean Code tries to teach an art, and show how best to design and continuously improve software products.

> I won't summarize everything throughout the book (there may be some chapters I skip). For example, there are a number of chapters where the authors bring you through some refactoring examples, where a summary just isn't enough.

## Key Parts:
If you have limited time, and want to get the most value, I would delve deeply into [Chapter 17: Smells and Heuristics](#Chapter-17:-Smells-and-Heuristics), to get a detailed list of all of their compiled best practices in creating so called __*clean code*__.

## Chapter 1: Clean Code
> Writing clean code is a lot like painting a picture. Most of us know when a picture is painted well or badly. But being able to recognize good art from bad does not mean that we know how to paint. So too, being able to recognize clean code from dirty code does not mean that we know how to write clean code! (p. 6)

> A programmer who writes clean code is an artist who can take a blank screen through a series of transformations until it is an elegantly coded system. (p. 7)

The chapter focuses on defining clean code, as it contrasts to bad code. The author asked a few other notable software engineers what their thoughts were, and they suggested:
* Bjarne Stroustrup (inventor of `C++`) &rarr; Code (1) should be elegant to read, (2) efficient, (3) minimize dependencies, (4) error handling should be complete (paying attention to details), and (5) do one thing well.
  <details><summary>Full Quote</summary>

   >I like my code to be elegant and efficient. The logic should be straightforward to make it hard for bugs to hide, the dependencies minimal to ease maintenance, error handling complete according to an articulated strategy, and performance close to optimal so as not to tempt people to make the code messy with unprincipled optimizations. Clean code does one thing well."
</details>

  > *Clean code is focused. Each function, each class, each module exposes a single-minded attitude that remains entirely undistracted, and unpolluted, by the surrounding details*
* Grady Booch (author of *Object Oriented Analysis*) &rarr;
  > "Clean code is simple and direct. Clean code reads like well-written prose. Clean code never obscures the designer's intent, but rather is full of crisp abstractions and straightforward lines of control."
* Dave Thomas (founder of `OTI`) &rarr;
  > "Clean code can be read, and enhanced by a developer other than its original author. It has unit and acceptance tests. It has meaningful names. It provides one way rather than many ways for doing one thing. It has minimal dependencies, which are explicitly defined, and provides a clear and minimal API. Code should be literate since, depending on the language, not all necessary information can be expressed clearly in code alone.
  * This quote asserts that clean code should make it easy for other people to enhance it, and ties it to tests.
* Michael Feathers (author of *Working Effectively with Legacy Code*) &rarr;
  > I could list all of the qualities that I notice in clean code, but there is one overarching quality that leads to all of them. Clean code always looks like it was written by someone who cares. There is nothing obvious that you can do to make it better. All of those things were thought about by the code's author, and if you try to imagine improvements, you're led back to where you are, sitting in appreciation of code someone left for you – code left by someone who cares deeply about the craft
* Ron Jeffries (author of *Expreme Programming Installed*) &rarr; **TLDR**: "Reduced duplication, high expressiveness, and early building of simple abstractions. That's what makes clean code for me."

  <details><summary>Full Quote</summary>

  > In recent years I begin, and nearly end, with Beck's rules of simple code. In priority order, simple code: (1) runs all the tests, (2) contains no duplication, (3) Expresses all the design ideas that are in the system, and (4) minimizes the number of entities such as classes, methods, functions and the like.

  > Of these, I focus mostly on duplication. when the same thing is done over and over, it's a sign that there is an idea in our mind that is not well represented in the code. I try to figure out what it is. Then I try to express that idea more clearly. Expressiveness to me includes meaningful names, and I am likely to change the names of things several times before I settle in... I also look at whether an object or method is doing more than one thing. If it's an object, it probably needs to be broken into two or more objects. If it's a method, I will always use the Extract Method refactoring on it, resulting in one method that says more clearly what it does, and some submethods saying how it is done.

  > All programs are made up of very simplar elements. Pne example is "find things in a collection". Whether we have a database of employee records, or a hash map of keys and values, or an array of items of some kind, we often find ourselves wanting a particular item from that collection. When I find that happening, I will often wrap the particular implementation in a more abstract method or class. That gives ma couple of interesting advantages. I can implement the functionality now with something simple, say a hash map, but since now all the references to that search are covered by my little abstraction, I can change the implementation any time I want. I can go forward quickly while preserving my ability to change later. In addition, the collection abstraction often calls my attention to what's "really" going on, and keeps me from running down the path of implementing arbitrary collection behavior when all I really need is a few fairly simple ways of finding what I want.

</details>

* Ward Cunningham (inventor of `Wiki`, `Fit`, `eXtreme Programming`) &rarr;
  > You know you are working on clean code when each routine you read turns out to be pretty much what you expected. You can call it beautiful code when the code also makes it look like the language was made for the problem.

In the end, he notes the **Boy Scout Rule** – *Leave the campground cleaner than you found it.*

## Chapter 2: Meaningful Names
## Chapter 3: Functions
## Chapter 4: Comments
## Chapter 5: Formatting
## Chapter 6: Objects and Data Structures
## Chapter 7: Error Handling
## Chapter 8: Boundaries
## Chapter 9: Unit Tests
## Chapter 10: Classes
## Chapter 11: Systems
## Chapter 12: Emergenece
## Chapter 13: Concurrency
## Chapter 14: Successive Refinement
## Chapter 15: JUnit Internals
## Chapter 16: Refactoring SerialDate
Here, the author refactors the SerialData package. It is a very involved refactor, and shows how he thinks through some issues. Look through it carefully, and take notes.
## Chapter 17: Smells and Heuristics
Here, Robert Martin lists a few series of heuristics and code smells he uses to refactor. This is the real gem of the book, and should be revisted often.
### Comments:
#### C1: Innappropriate Information
Comments shouldn't hold information that is better held in a different system, like your source code control system. Meta-data such as authors, when it was last modified, and the such shouldn't appear in comments. __*Comments should be reserved for technical notes about the code and design.*__
#### C2: Obsolete Comment
Comments get old, irrelevant, and incorrect very quickly. If it become sthat, update it or get rid of it as quickly as possible. __*It is best not to write a comment that will become obsolete.*__
#### C3: Redundant Comment
A redundant comment is one that describes something that adequately describes itself. This is especially relevant if one is following [G20](####-G20:-Function-Names-Should-Say-What-They-Do) and [N1](####-N1:-Choose-Descriptive-Names), writing your code with descriptive names for variables and methods.

#### C4: Poorly Written Comment
If you are going to write a comment, take the time to make sure it is the best comment you can write. __*Use correct grammer and punctuation. Don't ramble. Don't state the obvious. Be brief.*__

#### C5: Commented-Out Code
If there is commented-out code, __*delete it.*__ Your source code remembers it, if it is critical, and it clogs up your limited attention.

### Environment
#### E1: Build Requires More Than One Step
Building a project should be a single trivial operation. __*Everything your program needs to run should be available right when you check it out – you should be able to check out the system with one simple command, and then issue one other simple command to build it.*__
> Correllary: Prefer some other solution to `git submodules`, which can bugs when checking out/building.
#### E2: Tests Require More Than One Step
You should be able to run all the unit test with just one simple command, that should be explicitly told to users.

### Functions
#### F1: Too Many Arguments
Functions should have a small number of arguments. __*No argument is best, followed by one, two, and three. More than three is very questionable, and should be avoided with prejudice.*__
#### F2: Output Arguments
Output arguments (having your function change something in an object that is solely passed in as an input) are counterintuitive. If your function must change the state of something, have it change the state of the object it is called on.
> This, to me, is exemplified by the Golang pattern of writing into buffers provided. It allows for extensibility, but it does sometime make it more counterintuitive than not.
#### F3: Flag Arguments
If there is a boolean argument, that is a clear indication that the function does more than one thing, violating [G30](####-G30:-Functions-Should-Do-One-Thing).

#### F4: Dead Function
If a method is never called, it should be deleted, similar to [C5](####-C5:-Commented-Out-Code)

### General
#### G1: Multiple Languages in One Source File
Multiple languages (such as Java, XML, HTML, YAML, JavaDoc, and plain English comments) in a file require more context switching, and make files harder to read. Ideally, a source file should contain only __*one*__ language. Realistically, we may need more, but try to keep it at two.

#### G2: Obvious Behavior is Unimplemented
A function or class should implement the behavior that a user could reasonably expect. . When that isn't the case, readers and users of the code can no longer depend on their intuition, and must waste time reading the code.

#### G3: Incorrect Behavior at Boundaries
> "It seems obvious to say that code should behave correctly. The problem is that we seldom realize just how complicated correct behavior is. Developers often write functions that they think will work, and then trust their intuition, rather than going to the effort to prove that their code works in all the corner and boundary cases."

> There is no replacement for due diligence. Every boundary condition, every corner case, every quirk and exception represents something that can confound and elegant and intuitive algorithm. _Don't rely on your intuition._ Look for every boundary condition, and write a test for it.

#### G4: Overridden Safeties
Turning off compiler warnings, or failing tests, may help you get a build to succeed, but often at the risk of endless debugging sessions, as you mask a more serious issue.
#### G5: Duplication
Don't duplicate. This is called the **DRY** (Don't Repeat Yourself) rule by some. Kent Beck made it a core principle of Extreme Programming, calling it: **"Once, and only once."**
If there is duplication, that means you could be doing something better, perhaps extracting a subroutine, another class, or more. This can either be clumps of identical code, or identical checks (if/else chains).
#### G6: Code at Wrong Level of Abstraction
Try to separate ligher level general concepts from lower level detailed concepts. **This is a hard thing to pin down, and do**. Make sure to separate concerns as much as possible, particularly when using OOP to separate out separate concerns.
> *"Isolating abstractions is one of the hardest things that software developers do, and there is no quick fix when you get it wrong."*
#### G7: Base Classes Depending on Their Derivatives
This is an example of inheritance done really wrong. We typically partition concepts into base and derivative classes, in order to separate concerns and abstractions (see [G6](####-G6:-Code-at-Wrong-Level-of-Abstraction)). If you see base classes mentioning the names of derivatives, there is an issue (though there are some exceptions)
#### G8: Too Much Information
Try to expose as little as you can, while still enabling users to do a lot of functionality.
> "Well-defined modules have very small interfaces that allow you to do a lot with a little. Poorly defined moduels have wide and deep interfaces that force you to use many different gestures to get simple things done. A well-defined interface doesn't offer very many functions to depend upon, so coupling is low. A poorly defined interface provides lots of functions that you must call, so coupling is high"
#### G9: Dead Code
Delete any code that isn't executed, particularly in logical branches that will never occur (`if`s, `try/catches`, or `switch/case` statements)
#### G10: Vertical Separation
"Variables and functions should be defined close to where they are used. Local variables should be declared just above their first usage"
#### G11: Inconsistency
If you do something a certain way, even in a typical name you give a variable (eg. `response` to hold a `__Response` object), do all similar things in the same way. Be careful with the conventions you choose, and once chosen, be careful to continue following them. Consistency like that, when applied reliably, can make your code much easier to read and modify.
#### G12: Clutter
Delete variables that aren't used, functions that are never called, comments that add no information, and so forth. ***Keep your source files clean, well organized, and free of clutter.*** (this is very related to [C3](####-C3:-Redundant-Comment), [C5](####-C5:-Commented-Out-Code), [F4](####-F4:-Dead-Function), and [G9](####-G9:-Dead-Code))
#### G13: Artificial Coupling
An artificial coupling is a coupling between two modules that serves no direct purpose. For instance, if you define a general enum, don't have it in a more specific class. Take the time to figure out where functions, constants, and variables should be declared.
#### G14: Feature Envy
The methods of a class should be interested in the variables and functions of the class they belong to, and not the variables and functions of other classes. Sometimes, however Feature Envy is a necessary evil.
#### G15: Selector Arguments
If you can select what behavior you want by changing an argument, something may be off. "Selector arguments are just a lazy way to avoid splitting a large function into several smaller functions." This is very related to [F3](####-F3:-Flag-Arguments)
#### G16: Obscured Intent
Make your code as clear and expressive as you can. It is worth taking the time to make the intent of our code visible to our readers through the code itself, instead of obscuring our intent.
#### G17: Misplaced Responsibility
Code should go in the most intuitive place, where the reader would naturally expect it to be, and not necessarily where is most convenient for us.
#### G18: Inappropriate Static
Static functions are useful, but you should prefer nonstatic methods to static methods. If you really want a function to be static, make sure that there is no chance that you'll want it to behave polymorphically.
#### G19: Use Explanatory Variables
One of the more powerful ways to make a program readable is to break up the calculations up into intermediate values that are held in variables with meaningful names.
#### G20: Function Names Should Say What They Do
This is pretty self-explanatory. If you have to look at the implementation (or documentation) of the function to know what it does, then you should work to find a better name, or rearrange the functionality so that it can be placed in functions with better names.
#### G21: Understand the Algorithm
"Lots of very funny code is written because people don't take the time to understand the algorithm. They get something to work by plugging in enough `if` statements and flags, without really stopping to consider what is really going on.

Before you consider yourself to be done with a function, make sure you *understand* how it works. It isn't good enough that it passes all the tests. You must *know* that the solution is correct."
#### G22: Make Logical Dependencies Physical
If modules depend upon another module, that dependency shouldn't just be a logical one, with an assumption. Rather, it should explicily ask that moduel for all the information it depends upon.
#### G23: Prefer Polymorphism to If/Else or Switch/Case
Always consider polymorphism, before using a `switch` statement. A useful heuristic is that *there may be no more than one switch statement for a given type of selection*.
#### G24: Follow Standard Conventions
Every team should follow a coding standard, specifying things like where to declare instance variables, braces, etc. Everyone on the team should follow these conventions.
#### G25: Replace Magic Numbers with Named Constants
In general, it is a bad idea to have raw numbers in your code. Hide them behind well-named constants. But also don't have magic names or objects (for instance, using a certain character which comes built into your teams test databases)
#### G26: Be Precise
When you make a decision in your code, make sure you make it precisely. Don't be lazy about the precision of your decisions. If a function may return `null`, check for that. If you query the database for one result, always check to make sure there aren't others. Ambiguities and imprecisions in code are either a result of disagreements or laziness. In either case, they should be eliminated.
#### G27: Structure over Convention
Enforce design decisions with structure, over convention. If you design your system so that for someone to extend it, they'll need to use polymorphism, that is a good way of enforcing that people who come will use that design decision.
#### G28: Encapsulate Conditionals
Extract boolean functions that explain the intent of the conditional statement that you are using. For example, use `if (shouldBeDeleted(timer))`, instead of `if (timer.hasExpired() && !timer.isRecurrent())`.
#### G29: Avoid Negative Conditionals
Negatives are harder to parse than positives, so when possible, express conditionals as positives.
#### G30: Functions Should Do One Thing
This is a critical rule. Functions should do one thing, and only one thing.
#### G31: Hidden Temporal Coupling
Don't hide temporal couplings (functions that need to be called in a certain order). Structure the arguments of your functions, so that the order in which they should be called is obvious. One way you can use is by producing a result that the next function needs.
#### G32: Don't Be Arbitrary
Have a reason for the way you structure your code, and communicate that reason by the structure. If a structure appears consistently throughout the system, others will use it and preserve the convention.
#### G33: Encapsulate Boundary Conditions
Boundary conditions are hard to keep track, so put the processing for them in one place, by encapsulating it within a variable. For instance, prefer defining
```
int nextLevel = level + 1
```
over saying `level+1` in a number of places throughout a function.
#### G34: Functions Should Descend Only 1 Level of Abstraction
The statements within a function should all be written at the same level of abstraction, which should be one level below the operation described by the name of the function. This is similar to [G6](#g6-code-at-wrong-level-of-abstraction).
#### G35: Keep Configurable Data at High Levels
Keep configuration constants at a high level, making them easy to change, and pass those down to the rest of the application. That will make your program much easier to adjust as necessary.
#### G36: Avoid Transitive Navigation (Law of Demeter/Shy Code)
A module shouldn't know too much about its collaborators. Avoid doing `a.getB().getC().doSomething()`. Modules should only know about their immediate collaborators, and have them offer all the services they need, allowing them to decide exactly how to do it (saying `a.getB().doSomething()`).

### Java
#### J1: Avoid Long Import Lists by Using Wildcards
If you use two or more classes from a package, import the whole package with a wildcard. There are times when the list of specific imports can be useful; but that is rare. If you are adding dependencies in by hand, tend to use wildcards.
#### J2: Don't Inherit Constants
There is a pattern where people put constants in an interface, and gain access to those constants by inheritang that interface. That is a very hard thing to track down, and should be avoided.
#### J3: Constants vs Enums
Prefer to use `enums` over constants. Attach methods and fields to them, allowing them great flexibility.

### Names
#### N1: Choose Descriptive Names
Don't be too quick to choose a name. Make sure the name is descriptive. Remember that meanings tend to drift as software evolves, so frequently reevaluate the appropriateness of the names you choose.
> The power of carefully chose names is that they overload the structure of the code wth description. That overloading sets the readers' expectations about what the other functions in the module do.
#### N2: Choose Names at the Appropriate Level of Abstraction
Don't pick names that communicate implementations; choose names that reflect the level of abstraction of the class or function you are working in.
#### N3: Use Standard Nomenclature Where Possible
Names are easier to understand if they are based on existing convention or usage. If you are using a particular pattern, include that in the name (e.g., if using the `Decorator` pattern, call the class `AutoHangupModemDecorator`)
#### N4: Unambiguous Names
Choose names that make the workings of a function or variable unambiguous, similar to [G20](#-G20:-Function-Names-Should-Say-What-They-Do).
#### N5: Use Long Names for Long Scopes
If the scope of a variable is 5 lines, use short names (e.g., `i` or `j` in a loop). However, the longer the scope of the name, the longer and more precise the name should be.
#### N6: Avoid Encodings
Names shouldn't be encoded with type or scope information, by prefacing `m_` or `f_`.
#### N7: Names Should Describe Side Effects
Names should describe everything that a function, variable, or class is and does. Don't hide side effects with a name, be explicit about what it does.

### Tests
#### T1: Insufficient Tests
A test suite should test everything that could possibly break. Teh tests are insufficient so long as there are conditions that have not been explored by the tests, or calculations that have not been validated.
#### T2: Use a Coverage Tool
Coverage tools report gaps in your testing strategy, and make it easy to find `if` or `catch` statements whose bodies haven't been checked. Use them~
#### T3: Don't Skip Trivial Tests
Trivial tests are easy to write, and their value in documenting the code is higher than the cost to produce and run them.
#### T4: An Ignored Test is a Question about an Ambiguity
If you are unsure about a behavioral detail, we can express those questions as a commented out test, to verify exactly what the behavior should be.
#### T5: Test Boundary Conditions
Take special care to test boundary conditions. We often get the middle of an algorithm right, but misjudge the boundaries.
#### T6: Exhaustively Test Near Bugs
Bugs tend to congregate. When you find a bug in a function, it is wise to do an exhaustive test of that function. You'll probably find that the bug was not alone.
#### T7: Patterns of Failure are Revealing
You can diagnose problems, by finding patterns in the way test cases fail.
#### T8: Test Coverage Patterns can be Revealing
Looking at the code that is or isn't executed by passing tests gives clues to why the failing tests fail.
#### T9: Tests Should Be Fast
A slow test is a test that won't get run. When things get tight, it's the slow tests that will be dropped from the suite. So *do what you must* to keep your tests fast.

## Best Quotes
### Chapter 1: Clean Code
> Writing clean code is a lot like painting a picture. Most of us know when a picture is painted well or badly. But being able to recognize good art from bad does not mean that we know how to paint. So too, being able to recognize clean code from dirty code does not mean that we know how to write clean code! (p. 6)

> A programmer who writes clean code is an artist who can take a blank screen through a series of transformations until it is an elegantly coded system. (p. 7)

> Reduced duplication, high expressiveness, and early building of simple abstractions. That's what makes clean code for me. (p. 11)

> Many of the recommendations in this book are controversial. You will probably not agree with all of them. You might violently disagree with some of them. That's fine. We can't claim final authority. On the other hand, the recommendations in this book are things that we have thought long and hard about. We have learned them through decades of experience, and repeated trial and error. So whether you agree or disagree, it would be a shame if you did not see, and respect, our point of view. (p. 13)
### Chapter 17: Smells and Heuristics
> There is a difference between knowing how the code works, and knowing whether the algorithm will do the job required of it. Being unsure that an algorithm is appropriate is often a fact of life. Being unsure what your code does is just laziness. (Chapter 17, p. 298)

> Turning off failing tests and telling yourself you'll get them to pass later is as bad as pretending your credit cards are free money. (Chapter 17, p. 289)

> In general, you should prefer non-static methods to static methods. If you really want a function to be static, make sure that there is no chance that you'll want it to behave polymorphically. (p. 296)

> If you have to look at the implementation (or documentation) of the function to know what it does, then you should work to find a better name, or rearrange the functionality so that it can be placed in functions with better names. (p. 297)

> Lots of very funny code is written because people don't take the time to understand the algorithm. They get something to work by plugging in enough `if` statements and flags, without really stopping to consider what is really going on... Before you consider yourself to be done with a function, make sure you *understand* how it works. It isn't good enough that it passes all the tests. You must *know* that the solution is correct. (p. 298)

> This means tht each team member must be mature enough to realize that it doesn't matter a whit where you put your braces, so long as you agree on where to put them. (p. 300)

> Expecting the first match to be the *only* match to a query is probably naive. Using floating point numbers to represent currency is almost criminal. Avoiding locks and/or transaction management because you don't think concurrent update is likely is lazy at best. Declaring a varaible to be an `ArrayList` when a `list` will due is overly constrating. Making all variables `protected` by default is not constraining enough. (p. 301)

> Ambiguities and imprecisions in code are either a result of disagreements or laziness. In either case, they should be eliminated. (p. 301)

> Boolean logic is hard enough to understand without having to see it in the context of an `if` or `while` statement (p. 301)

> Names in softare are 90% of what makes software readable. You need to take the time to choose them wisely, and keep them relevant. Names are too important to treat carelessly. (p. 309)

> The power of carefully chose names is that they overload the structure of the code wth description. That overloading sets the readers' expectations about what the other functions in the module do. (p. 310)

> A test suite should test everything that could possibly break. Teh tests are insufficient so long as there are conditions that have not been explored by the tests, or calculations that have not been validated. (p. 313)

> Bugs tend to congregate. When you find a bug in a function, it is wise to do an exhaustive test of that function. You'll probably find that the bug was not alone. (p. 314)

> A slow test is a test that won't get run. When things get tight, it's the slow tests that will be dropped from the suite. So *do what you must* to keep your tests fast. (p. 314)
