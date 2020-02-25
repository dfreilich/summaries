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
    - [G17: Misiplaced Responsibility](#g17-misiplaced-responsibility)
    - [G18: Innappropriate Static](#g18-innappropriate-static)
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
    - [G35: Keep Confugrable Data at High Levels](#g35-keep-confugrable-data-at-high-levels)
    - [G36: Avoid Transitive Navigation](#g36-avoid-transitive-navigation)
  - [Java](#java)
    - [J1: Avoid Long Import Lists by Using Wildards](#j1-avoid-long-import-lists-by-using-wildards)
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
    - [T6: Exhausitvely Test Near Bugs](#t6-exhausitvely-test-near-bugs)
    - [T7: Patterns of Failure are Revealing](#t7-patterns-of-failure-are-revealing)
    - [T8: Test Coverage Patterns can be Revealing](#t8-test-coverage-patterns-can-be-revealing)
    - [T9: Tests Should Be Fast](#t9-tests-should-be-fast)
- [Best Quotes](#best-quotes)

<!-- tocstop -->

---

 ## Summary
Clean Code is an incredibly rich depiction of best practices in Agile software craftsmanship. Robert Martin, together with a number of other famed Software Engineers and Architects, take you point by point through a vast number of heuristics and best practices in creating good, solid, clean code. Through a number of refactoring exercises, Clean Code tries to teach an art, and show how best to design and continuously improve software products.

> I won't summarize everything throughout the book (there may be some chapters I skip). For example, there are a number of chapters where the authors bring you through some refactoring examples, where a summary just isn't enough.

## Key Parts:
If you have limited time, and want to get the most value, I would delve deeply into [Chapter 17: Smells and Heuristics](#Chapter-17:-Smells-and-Heuristics), to get a detailed list of all of their compiled best practices in creating so called __*clean code*__.

## Chapter 1: Clean Code
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
## Chapter 17: Smells and Heuristics
Here, Robert Martin lists a few series of heuristics and code smells he uses to refactor. This is the real gem of the book, and should be revisted often.
### Comments:
#### C1: Innappropriate Information
Comments shouldn't hold information that is better held in a different system, like your source code control system. Meta-data such as authors, when it was last modified, and the such shouldn't appear in comments. __*Comments should be reserved for technical notes about the code and design.*__
#### C2: Obsolete Comment
Comments get old, irrelevant, and incorrect very quickly. If it become sthat, update it or get rid of it as quickly as possible. __*It is best not to write a comment that will become obsolete.*__
#### C3: Redundant Comment

#### C4: Poorly Written Comment
#### C5: Commented-Out Code

### Environment
#### E1: Build Requires More Than One Step
#### E2: Tests Require More Than One Step

### Functions
#### F1: Too Many Arguments
#### F2: Output Arguments
#### F3: Flag Arguments
#### F4: Dead Function

### General
#### G1: Multiple Languages in One Source File
#### G2: Obvious Behavior is Unimplemented
#### G3: Incorrect Behavior at Boundaries
#### G4: Overridden Safeties
#### G5: Duplication
#### G6: Code at Wrong Level of Abstraction
#### G7: Base Classes Depending on Their Derivatives
#### G8: Too Much Information
#### G9: Dead Code
#### G10: Vertical Separation
#### G11: Inconsistency
#### G12: Clutter
#### G13: Artificial Coupling
#### G14: Feature Envy
#### G15: Selector Arguments
#### G16: Obscured Intent
#### G17: Misiplaced Responsibility
#### G18: Innappropriate Static
#### G19: Use Explanatory Variables
#### G20: Function Names Should Say What They Do
#### G21: Understand the Algorithm
#### G22: Make Logical Dependencies Physical
#### G23: Prefer Polymorphism to If/Else or Switch/Case
#### G24: Follow Standard Conventions
#### G25: Replace Magic Numbers with Named Constants
#### G26: Be Precise
#### G27: Structure over Convention
#### G28: Encapsulate Conditionals
#### G29: Avoid Negative Conditionals
#### G30: Functions Should Do One Thing
#### G31: Hidden Temporal Coupling
#### G32: Don't Be Arbitrary
#### G33: Encapsulate Boundary Conditions
#### G34: Functions Should Descend Only 1 Level of Abstraction
#### G35: Keep Confugrable Data at High Levels
#### G36: Avoid Transitive Navigation


### Java
#### J1: Avoid Long Import Lists by Using Wildards
#### J2: Don't Inherit Constants
#### J3: Constants vs Enums

### Names
#### N1: Choose Descriptive Names
#### N2: Choose Names at the Appropriate Level of Abstraction
#### N3: Use Standard Nomenclature Where Possible
#### N4: Unambiguous Names
#### N5: Use Long Names for Long Scopes
#### N6: Avoid Encodings
#### N7: Names Should Describe Side Effects

### Tests
#### T1: Insufficient Tests
#### T2: Use a Coverage Tool
#### T3: Don't Skip Trivial Tests
#### T4: An Ignored Test is a Question about an Ambiguity
#### T5: Test Boundary Conditions
#### T6: Exhausitvely Test Near Bugs
#### T7: Patterns of Failure are Revealing
#### T8: Test Coverage Patterns can be Revealing
#### T9: Tests Should Be Fast

## Best Quotes
> There is a difference between knowing how the code works, and knowing whether the algorithm will do the job required of it. Being unsure that an algorithm is appropriate is often a fact of life. Being unsure what your code does is just laziness. (Chapter 17, p. 298)
