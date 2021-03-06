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
  - [Chapter 2: Saying No](#chapter-2-saying-no-1)
  - [Chapter 3: Saying Yes](#chapter-3-saying-yes-1)
  - [Chapter 4: Coding](#chapter-4-coding-1)
  - [Chapter 5: TDD](#chapter-5-tdd)
  - [Chapter 6: Practicing](#chapter-6-practicing-1)
  - [Chapter 7: Acceptance Testing](#chapter-7-acceptance-testing-1)
  - [Chapter 9: Time Management](#chapter-9-time-management-1)
  - [Chapter 11: Pressure](#chapter-11-pressure-1)
  - [Chapter 12: Collaboration](#chapter-12-collaboration-1)
  - [Chapter 13: Teams and Projects](#chapter-13-teams-and-projects-1)
  - [Chapter 14: Mentoring, Apprenticeship, and Craftmanship](#chapter-14-mentoring-apprenticeship-and-craftmanship)

<!-- tocstop -->

## Summary
This book, a sequel to [Clean Code](CleanCode.md), seems to focus much less on the specifics of code management, and more about how a good professional coder should act and behave.

## Chapter 1: Professionalism
There are many different elements to professionalism. At its most basic, it is about taking responsibility for your work by:
* Do No Harm &rarr; We are being paid to create software that works just like it should. We harm the function of our software when we create bugs. Therefore, in order to be professional, we must not create bugs. This isn't saying you have to be perfect, but **you have to be responsible for your imperfections**. You have to **apologize**, but **apologies are insufficient**. ***You can't make the same errors over and over. As you mature, your error rate should rapidly decrease towards the asymptote of zero***.
* Know How It works &rarr; Know how your code works, by testing it again, and again, and again. Use TDD to ensure that your code is testable, and make sure that coverage is asymptotically close to 100%. As a result of this, QA or Users should find nothing; and if they do, be ready to apologize, and then figure out why those bugs escaped your notice, and do something to ensure that it doesn't happen again.
* Use Automated QA &rarr; Essentially, you should be using a CI/CD system that continuously tests your code, and takes care of releasing it for you, or getting it very close with little effort while testing everything.
* Enable Change &rarr; ***You must be able to make changes to your code without exorbitant costs.*** The fundamental assumption underlying all software projects is that software is easy to change. If you violate this assumption by creating inflexible structures, then you undercut the economic model that the entire industry is based on. *If you want your software to be flexible, you have to flex it.* Make small changes all the time to your code (the "Boy Scout Rule", or *merciless refactoring*). You can only do this if you are sure that the code will work, because you have a very very rigorous suite of tests, so make sure that exists.

You also have to take responsibility for your career, by developing your:
* Work Ethic &rarr; Your career is *your* responsibility. If your employer trains you, sends you to conferences, or buys you books, those are great favors, but don't think that this is your employer's responsibility. You should be spending 20 hours a week reading, practicing, enhancing in some way your career. This is a recipe to avoid burnout, because you should be doing something to reinforce your passion for the field, and rediscovering the fun you have!
* Knowledge of the Field &rarr; Simply put, you should know a whole bunch about the Comp-Sci field than you do. A minimal list of things every software professional should be conversant with is:
  * Design Patterns &rarr; You should be able to describe all 24 patterns in [Design Patterns: Elements of Reusable Object-Oriented Software](https://en.wikipedia.org/wiki/Design_Patterns)
  * Design Principles &rarr; You should know the [**SOLID** principles](https://en.wikipedia.org/wiki/SOLID), and understand the component principles. (Just as a refresher, **SOLID** stands for: **S**ingle Responsibility Principle, **O**pen/Closed Principle, **L**iskov Substitution Principle, **I**nterface Segregation Principle, **D**ependency Inversion Principle.)
  * Methods &rarr; Understand XP, Scrum, Lean, Kanban, Waterfall, and more methods
  * Disciplines &rarr; Practice TDD, OO design, structured programming, and more
  * Artifacts &rarr; Know how to use UML, DFD's, Structure Charts, and more
* Continuous Learning &rarr; Much like you wouldn't visit a doctor or tax lawyer who don't stay current with current practices, developers have to stay current. Read books, articles, blogs and more.
* Practice &rarr; True professionals work hard to keep their skills sharp and ready. Do a simple repetitive exercise, like the Bowling Game kata, every day in different languages
* Collaboration &rarr; Professional software developers program together, practice together, design and plan together
* Mentorship &rarr; The best way to learn is to teach. Professionals take personal responsibility for mentoring juniors. They will not let a junior flail about unsupervised.
* Domain Knowledge &rarr; If you are creating a project in something, you must know the domain. If you are working on an accounting system, know the accounting field. There is a reasonable amount of due diligence you should engage in. Spend time with experts, and try to understand their principles and values, so you can understand the spec, and challenge specification errors.
* Identification with Customers &rarr; Your customer and employer's problems are your problems. You need to understand them, and work towards the best solution.
* Humility &rarr; Professionals knows his job, and takes pride in his work. However, a professional knows there are times where he will fail, and he will see himself an arrogant fool. He will never ridicule others, but will accept ridicule when it is deserved, and laugh it off when it's not. He will not demean another for making a mistake, because he knows he may be the next to fail.

## Chapter 2: Saying No
Slaves are not allowed to say no. Laborers may be hesitant to say no. But professionals are *expected* to say no. If you are given a deadline that is totally unreasonable, don't say you'll try, and then deliver a bad product, or no product at all. Push back, and settle on something that works.

Sometimes, there is cost to saying yes too much. Often stakeholders will motivate developers by telling them the app is simple, then try to add features, and push the deadline again and again.

## Chapter 3: Saying Yes
There are very few people who, when they say something, they mean it and then actually get it done. There are some who will say things and *mean* them, but they never get it done. And there are far more people who promise things and don't even *mean* to do them.

And so, when we say we do something, we should (a) actually do it, and (b) make sure the commitment is clear. You can only commit to things you have full control of, however. If you interact with other people, however, be clear on what you can do, and commit to that.

You may be tempted to break discipline, and skip tests at some point, or not refactor. But this is where the professional draws the line. As a professional, he has a responsibility to maintain certain standards. His code needs to be tested, and needs to have tests. His code needs to be clean. And he has to be sure he hasn't broken anything else in the system.


Professionals are not required to say yes to everything that is asked of them. However, they should work hard to find creative ways to make "yes" possible. When professionals say yes, they use the language of commitment so that there is no doubt about what they've promised.

## Chapter 4: Coding
Coding is an intellectually challenging and exhausting activity, which requires a level of concentration and focus, because:
* Your code must work
* Your code must solve the problem set by the customer
* Your code needs to fit into the existing system
* Your code must be readable by other programmers, crafted in a way that it reveals your intent

If you are are tired or distracted, *do not code*. First settle yourself, and only then go to code. If you are tired, agitated, anxious, you won't be able to focus on the job, and the code will be worthless. A strategy that can help is dedicate some time to working on the problem, and focus the rest of the time.

Don't be snappy if you are interrupted; a professional has a polite willingness to be helpful.

Debugging is a waste of time – ideally, you shouldn't be introducing any bugs that need to be fixed. If you use TDD or another discipline of equal efficacy, it's incumbent to reduce your debugging time to as close to zero as you can get it.

You will be late. It happens to everyone. But make sure that people know about it in advance.

There are times where we convince ourselves that we are done **enough**. We sometimes stretch the truth, in a horrible practice. That is really bad. There should be a definition of done that is required, ideally with something like automated acceptance tests.

Coding is hard. You think it's easy at the beginning, but it is a very difficult task. Programming is so hard, in fact, that it is beyond the capability of one person to do it well. No matter how skilled you are, you will certainly benefit from another programmer's thoughts and ideas. Similarly, as a professional you are honor bound to offer that help whenever it is needed. You should be conscious of your teammates, and offer to help people. And when someone offers you help, be gracious about it - accept it gratefully, and give yourself to that help.

## Chapter 5: Test Driven Development
TDD works. I don't think surgeons should have to defend hand-washing, and I don't think programmers should have to defend TDD. The three laws of TDD are:
1. You can't write production code until you have written a failing unit test
2. You can't write more of a unit test than is sufficient to fail – and not compiling is failing
3. You are not allowed to write more production code than is sufficient to pass the currently failing unit test.

The cycle time for this is, perhaps, thirty seconds long. The benefits of TDD are:
* Certainty &rarr; By the end, you will have dozens and hundreds of tests. If you need to change anything, you can just run the unit tests to make sure that it didn't break anything.
* Defect Injection Rate &rarr; You significantly reduce the number of defects in code when you use TDD.
* Courage &rarr; You have the courage to make changes in your code, because you know that you can test to ensure that nothing was broken
* Documentation &rarr; Every unit test is a description on how the system should be used. There should be a unit test that shows how to create every object in the system, a unit test that describes how to call every function in the system, and more. In short, **for anything you need to know, there should be a unit test that describes it in detail**
* Design &rarr; Your code will be designed to be easily tested

At the same time, TDD isn't perfect – **you can still write bad code, even if you write your tests first. Indeed, you can write bad tests.**
## Chapter 6: Practicing
Doing anything quickly requires practice. Making decisions quickly means being able to recognize a vast number of situations and problems, and simply know what to do to address them.

Coding Dojo's, or *kata*'s, are useful to practice. There are a number of them that are nice to practice. A kata is a precise set of choreographed keystrokes that simulate solving a programming problem. You aren't solving it, because you know the solution already; instead, you are practicing the movements and decisions involved in solving the problem. Some kata's are at:
* https://katas.softwarecraftsmanship.org/
* http://codekata.com/
* [Wordwrap](https://ccd-school.de/en/coding-dojo/application-katas/wordwrap/)

You can do it various ways, with partners or by yourself. It is also important to practice on your own time, by contributing to open source projects in another language, let's say.

## Chapter 7: Acceptance Testing
One of the most common communication issues between programmers and business is the requirements. The communication of requirements is extremely difficult, and the process is fraught with error. Both business and programmers try to give precision prematurely. The more precise you make your requirements, the less relevant they become as the system is implemented.

Professional developers understand that estimates can, and should be made based o nlow precision requirements, and recognize that those estimates are *estimates*. To reinforce this, professional developers always include error bars with their estimates, so that the business understands the uncertainty.

Acceptance tests are tests written by a collaboration of the stakeholders and the programmers, in order to define when a requirement is *done*. One of the most common ambiguities we face is the ambiguity of done. But for professional developers, done means all code written, all tests pass, QA and the stakeholders have accepted. The easiest way to specify that is through automated acceptance tests. The purpose of acceptance tests is communication, clarity, and precision. Acceptance tests should *always* be automated, in order to ensure that the code works. Professional developers take responsibility for their part in ensuring that acceptance tests are automated.

The purpose of acceptance tests isn't testing; they are documents first, and tests second. They formally document the design, structure, and behavior of the system. Make sure that the tests are run several times a day, through a continuous integration system, triggered by your source code control system. A broken build should be an emergency.

## Chapter 8: Testing Strategies
QA should find nothing wrong. It is unlikely that this is the case, but the development team should try to ensure that QA finds nothing.

There should be a hierarchy/pyramid of testing: Unit tests, component tests, integration tests, system tests, and exploratory tests
* Unit Tests &rarr; Unit tests should be written for programmers, by programmers, in the programming language of the system. This specifies the system at the lowest level. Provide as close to 100% coverage as is practical
* Component Tests &rarr; These are written against individual components, serving as acceptance tests for components. It should test one component, and decouple any other system components using mocking and test-doubling. These should cover close to 50% of the system.
* Integration tests &rarr; These tests many components together. They are *choreography* tests, ensuring that the components work well together.
* System Tests &rarr; These are automated tests executing against the entire integrated system. They ensure that the system works appropriately, and the parts interoperate appropriately.
* Manual Exploratory Tests &rarr; These aren't automated or scripted. They should explore the system for unexpected behaviors, while confirming expected behaviors.

## Chapter 9: Time Management
Meetings cost about $200/hour/attendee, taking into account salaries, facilities costs, etc. There are two truths about meetings:
1. Meetings are necessary
2. Meetings are huge time wasters

Professionals are aware that their time is precious; therefore, they actively resist attending meetings that don't have an immediate and significant benefit. It is unprofessional to go to too many meetings. The person inviting you to a meeting isn't responsible for managing your time. Only *you* can do that.

One of the most important duties of your  manager is to keep you *out* of meetings. A good manager will be more than willing to defend your decision to decline attendance because that manager is just as concerned about your time as you are.

If you find that a meeting isn't relevant, leave. find a way to politely exit that meeting. If you are asked to go to a meeting, have an agenda. Stand Up Meetings should take no more than 1 minute a person. Iteration planning meetings should proceed quickly, with no more than 5 or 10 minutes per any specific item. Retros should be scheduled 45 minutes before the end of day. Any argument that can't be settled in 5 minutes can't be settled by arguing.

Make sure you have enough energy/focus for the day. Get sleep, recharge however you work best, do physical activity.

Use techniques to manage your time. For instance, the *Pomodoro Technique*. Set a timer for 25 minutes, and don't allow any interruptions. Then, stop immediately, with a break of 5 minutes or so. Every 4 times (2 hours), take a longer break of 30 minutes or so.

## Chapter 10: Estimation
At it's core, people view estimates in different ways, which lead to profound issues:
* Businesses view estimates as commitments. It is ***certain***.
* Developers view estimates as guesses. For developers, an estimate isn't a number, it is a *distribution*

Professionals draw a clear distinctionb etween estimates and commitments. They don't commit unless they know for certain that they will succeed. They are careful not to make any *implied* commitments, and make it clear that they are conveying a distribution.

One useful scheme for estimation is **PERT** (Program Evaluation and Review Technique), where you give three numbers:
* **O** &rarr; Optimistic Estimate. This is a wildly optimistic number, if everything goes right
* **N** &rarr; Nominal Estimates. This is the estimate with the greatest chance of success
* **P** &rarr; Pessimistic Estimate. This is wildly pessimistic.

Using those three numbers, yo con describe the probability distribution and standard deviation of the task.

Whether through PERT or another system, Software professionals are very careful to set reasonable expectations despite the pressure to try to go fast.

You should also take advantage of the *Law of Large Numbers*, which implies that if you break up a large task into many smaller tasks and estimate them independently, the sum of the estimates will be more accurate than the estimate of the large task.

## Chapter 11: Pressure
The best way to stay calm under pressure is to avoid the situations that cause pressure. Some ways to do that are:
* Avoid committing to deadlines that we aren't sure we can meet. Make sure the risk of deadlines is quantified and clear to the business, so they can manage it appropriately.
  * There are occasionally commitments made for us. When this happens, we are honor bound to help the business find a way to meet those commitments. However, we aren't honor bound to accept the commitments.
* Stay clean. Professionals realize the "quick and dirty" is an oxymoron. Dirty always means slow!
* Choose disciplines that you feel comfortable following in a crisis. Then follow them all the time. Don't change your behavior when the crunch comes. If your disciplines are the best way to work, then they should be followed even in the depth of a crisis.

If you end up in a pressured situation, however, you need to manage it. Some tools for that are:
* Don't panic. Slow down, and think the problem through.
* Communicate to your team and superiors that you are in trouble. Avoid creating surprises.
* Trust your disciplines. If you follow TDD, write more tests than usual. If you are a merciless refactorer, refactor even more.
* Get help. Utilize pair programming, to get done faster with fewer defects.

By the same token, if you see someone else who's under pressure, offer to pair with them, and help them out of the hole they are in.

## Chapter 12: Collaboration
We didn't like programmers because we like working with people. As a rule, we find interpersonal relationships messy and unpredictable. While that may be an overgeneralization, the group average tends in that direction. But tough luck. Programming is all about working with people. We need to work with our business, and we need to work with each other.

The first responsibility of a professional programmer is to meet the needs of your employer. That means collaborating with managers and other team members to *deeply understand* the business goals. You need to understand why you are writing the code you are writing, and how the business that employs you will benefit from it.

Secondly, you also need to interact with your team. One of the worst symptoms of a dysfunctional team is when each programmer builds a wall around his code and refuses to let other programmers near it. It is far better to break down all walls of code ownership, and have the **team** own all the code.

Professionals practice pair programming. Why? For some problems, it is the most efficient way to solve them. It is also the best way to share knowledge with each other. Professionals don't create knowledge silos, but learn the different parts of the system and business by pairing with each other.

## Chapter 13: Teams and Projects
It makes no sense to tell a programmer to devote half their time to two different projects, especially when the two projects have two different PMs and more.

A gelled team can work miracles. They anticipate each other, cover for each other, support each other, and demand the best from each other. They make things happen. A gelled team usually consists of about a dozen people, a mixture of programmers (around 7), testers (2), and analysts (2) with a project manager. It may take time for a team like this to come together, but once it happens, it's magic.

You can't have individual programmers join multiple projects simultaneously, but you can point gelled teams in multiple projects nad have them take it over. Teams are harder to build than projects. Therefore, it is better to form persistent teams that move together from one project ot the next, and can take on more than one project at a time. The goal in forming a team is to give that team enough time to gel, and then keep it together as an engine for getting many projects done.

## Chapter 14: Mentoring, Apprenticeship, and Craftsmanship
Even the best CS degree programs do not typically prepare the young graduate for what they will find in industry. Somehow, the software development industry has gotten the idea that programmers are programmers, and that once you graduate you can code. Given that software is important, it is important to have a reasonable period of training and supervised practice. It is time for those of us in the software industry to face the fact that guiding the next batch of software developers to maturity will fall to us, not to the universities.

Professional values and technical acumen must be taught, nurtured, coddled and encultured. The ideal is to train people into craftsman. A craftsman is someone who works quickly, but without rushing, who provides reasonable estimates and meets commitments. A craftsman knows when to say no, but tries hard to say yes. A craftsman is a professional.

However, you can't convince people to be craftsman. You must make it observable. You act as a role model. Become a craftsman first, and let your craftsmanship show. Then just let that influence people.

## Best Quotes
### Chapter 1: Professionalism
> We harm the function of our software when we create bugs. Therefore, in order to be professional, we must not create bugs. (p. 11)

> You must be responsible for your imperfections. The fact that bugs will certainly occur in your code does not mean you aren't responsible for them. The fact that the task is to write perfect software is virtually impossibly, does not mean you aren't responsible for the imperfect. (p. 12)

> If you want your software to be flexible, you have to flex it. (p. 15)

### Chapter 2: Saying No
> Slaves are not allowed to say no. Laborers may be hesitant to say no. But professionals are *expected* to say no. (p. 26)

### Chapter 3: Saying Yes
> There are very few people who, when they say something, they mean it and then actually get it done. There are some who will say things and *mean* them, but they never get it done. And there are far more people who promise things and don't even *mean* to do them. (p. 48)

> As a professional, he has a responsibility to maintain certain standards. His code needs to be tested, and needs to have tests. His code needs to be clean. And he has to be sure he hasn't broken anything else in the system.  (p. 55)

> Professionals are not required to say yes to everything that is asked of them. However, they should work hard to find creative ways to make "yes" possible. (p. 56)

### Chapter 4: Coding
> Programming is so hard, in fact, that it is beyond the capability of one person to do it well. No matter how skilled you are, you will certainly benefit from another programmer's thoughts and ideas. (p. 74)

### Chapter 5: TDD
> I don't think surgeons should have to defend hand-washing, and I don't think programmers should have to defend TDD. (p. 79)

> How can you consider yourself to be a professional if you do not *know* that all your code works? How can you know ala your code works if you don't test it every time you make a change? How can you test it every time you make a change if you don't have automated unit tests with very high coverage? How can you get automated unit tests with very high coverage, without practicing TDD? (p. 79)

> You can still write bad code, even if you write your tests first. Indeed, you can write bad tests. (p. 84)

### Chapter 6: Practicing
> The fact that some programmers do wait for builds is tragic, and indicative of carelessness. In today's world, build times should be measured in seconds, not minutes, and certainly not hours. (p. 88)

> They practice on their own time because they realize that it is their responsibility - and not their employer's - to keep their skills sharp. (p. 94)

> Practicing is what you do when you *aren't* getting paid. You do it so that you *will* be paid, and paid *well*. (p. 94)

### Chapter 7: Acceptance Testing
> The more precise you make your requirements, the less relevant they become as the system is implemented. (p. 98)

### Chapter 9: Time Management
> The person inviting you to a meeting isn't responsible for managing your time. Only *you* can do that. (p. 123)

> One of the most important duties of your  manager is to keep you *out* of meetings. A good manager will be more than willing to defend your decision to decline attendance because that manager is just as concerned about your time as you are. (p. 123)

> Rule of Holes: *When you are in one, stop digging* (p. 131)

### Chapter 11: Pressure
> The best way to stay calm under pressure is to avoid the situations that cause pressure. (p. 151)

> [There are occasionally commitments made for us...] When this happens, we are honor bound to help the business find a way to meet those commitments. However, we aren't honor bound to accept the commitments. (p. 152)

> Choose disciplines that you feel comfortable following in a crisis. Then follow them all the time... Don't change your behavior when the crunch comes. If your disciplines are the best way to work, then they should be followed even in the depth of a crisis. (p. 153)

### Chapter 12: Collaboration
> We didn't like programmers because we like working with people. As a rule, we find interpersonal relationships messy and unpredictable. (p. 159)

> The first responsibility of a professional programmer is to meet the needs of your employer. That means collaborating with managers and other team members to *deeply understand* the business goals. You need to understand why you are writing the code you are writing, and how the business that employs you will benefit from it. (p. 160)

> Programming is all about working with people. We need to work with our business, and we need to work with each other. (p. 166)

### Chapter 13: Teams and Projects
> There is something truly magical about a gelled team. They can work miracles. They anticipate each other, cover for each other, support each other, and demand the best from each other. They make things happen. (p. 168)

> Teams are harder to build than projects. Therefore, it is better to form persistent teams that move together from one project to the next, and can take on more than one project at a time. (p. 171)

>  The goal in forming a team is to give that team enough time to gel, and then keep it together as an engine for getting many projects done. (p. 171)

### Chapter 14: Mentoring, Apprenticeship, and Craftmanship
> Somehow, the software development industry has gotten the idea that programmers are programmers, and that once you graduate you can code. (p. 181)

> Professional values and technical acumen must be taught, nurtured, coddled and encultured. (p. 191)
