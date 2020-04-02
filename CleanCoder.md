<!-- omit in toc -->
# [Clean Coder](https://amzn.to/38o5blj)
> *By Robert Martin*

 Table of Contents:
<!-- toc -->

- [Summary](#summary)
- [Chapter 1: Professionalism](#chapter-1-professionalism)
- [Chapter 2: Saying No](#chapter-2-saying-no)
- [Chapter 3: Saying Yes](#chapter-3-saying-yes)
- [Chapter 4: Coding](#chapter-4-coding)
- [Chapter 5: Test Driven Development](#chapter-5-test-driven-development)
- [Chapter 6: Practicing](#chapter-6-practicing)
- [Chapter 7: Acceptance Testing](#chapter-7-acceptance-testing)
- [Chapter 8: Testing Strategies](#chapter-8-testing-strategies)
- [Chapter 9: Time Management](#chapter-9-time-management)
- [Chapter 10: Estimation](#chapter-10-estimation)
- [Chapter 11: Pressure](#chapter-11-pressure)
- [Chapter 12: Collaboration](#chapter-12-collaboration)
- [Chapter 13: Teams and Projects](#chapter-13-teams-and-projects)
- [Chapter 14: Mentoring, Apprenticeship, and Craftsmanship](#chapter-14-mentoring-apprenticeship-and-craftsmanship)
- [Best Quotes](#best-quotes)
  - [Chapter 1: Professionalism](#chapter-1-professionalism-1)

<!-- tocstop -->

## Summary
This book, a sequel to [Clean Code](CleanCode.md), seems to focus much less on the specifics of code management, and more about how a good professional coder should act and behave.

## Chapter 1: Professionalism
There are many different elements to professionalism. At its most basic, it is about taking responsibility for your work by:
* Do No Harm &rarr; We are being paid to create software that works just like it should. We harm the function of our software when we create bugs. Therefore, in order to be professional, we must not create bugs. This isn't saying you have to be perfect, but **you have to be responsible for your imperfections**. You have to **apologize**, but **apologies are insufficient**. ***You can't make the same errors over and over. As you mature, your error rate should rapidly decrease towards the asymptote of zero***.
* Know How It works &rarr; Know how your code works, by testing it again, and again, and again. Use TDD to ensure that your code is testable, and make sure that coverage is asymptotically close to 100%. As a result of this, QA or Users should find nothing; and if they do, be ready to apologize, and then figure out why those bugs escaped your notice, and do something to ensure that it doesn't happen again.
* Use Automated QA &rarr; Essentially, you should be using a CI/CD system that continuously tests your code, and takes care of releasing it for you, or getting it very close with little effort while testing everything.
* Enable Change &rarr; ***You must be able to make changes to your code without exorbitant costs.*** The fundamental assumption underlying all software projects is that software is easy to change. If you violate this assumption by creating inflexible structures, then you undercut the economic model that the entire industry is based on. *If you want your software to be flexible, you have to flex it.* Make small changes all the time to your code (the "Boy Scout Rule", or *merciless refactoring*). You can only do this if you are sure that the code will work, because you have a very very rigorous suite of tests, so make sure that exists.

## Chapter 2: Saying No

## Chapter 3: Saying Yes

## Chapter 4: Coding

## Chapter 5: Test Driven Development

## Chapter 6: Practicing

## Chapter 7: Acceptance Testing

## Chapter 8: Testing Strategies

## Chapter 9: Time Management

## Chapter 10: Estimation

## Chapter 11: Pressure

## Chapter 12: Collaboration

## Chapter 13: Teams and Projects

## Chapter 14: Mentoring, Apprenticeship, and Craftsmanship

## Best Quotes
### Chapter 1: Professionalism
> We harm the function of our software when we create bugs. Therefore, in order to be professional, we must not create bugs. (p. 11)

> You must be responsible for your imperfections. The fact that bugs will certainly occur in your code does not mean you aren't responsible for them. The fact that the task is to write perfect software is virtually impossibly, does not mean you aren't responsible for the imperfect. (p. 12)

> If you want your software to be flexible, you have to flex it. (p. 15)
