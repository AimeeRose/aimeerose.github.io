title: I'm just trying to program without going crazy.*
date: 2013-09-02 12:38:16
tags: programming
---
## I love Rich Hickey’s talk [“Are we there yet?”](http://www.infoq.com/presentations/Are-We-There-Yet-Rich-Hickey) because it helped me “get” functional programming.

I “knew” about functional program in the sense I could recapitulate the functional programming as a paradigm which implements pure functions returning values and avoids state and mutability by the time-insensitivity of its functions. But the talk helped me “get” functional programming in the conceptual sense of why and how a programmer would write a functional program. 

## I also love “Are we there yet?” because I love philosophy and Hickey gets pretty philosophical.

During the talk, Hickey touches on the philosophical topics of time and existentialism. 

Hickey convinced me of something I have already been turning over: the close relationship between programming paradigms and philosophy. This makes sense: programming is an activity invented by humans to teach things to behave like us. Further, mathematical functions, the most basic and foundational of functions of computers, are inventions of humans as well.

## Existentialism and Functional Programming

Wouldn’t it be stupendous if we, as programmers, could be unconcerned with how our functions affect the objects they operate on? 

We need to thinking of our programs more like the real world, where change, and oopsies!, are the norm, not the exception.

The object-oriented programming paradigm enables programmers to relax into false notions of control. Hickey uses an image from the movie *the Matrix* to visually signify how object-orientation is like attempting to be Neo, attempting to remove objects from time for our programs' manipulation.

But programmers, as much as they try, do not exist in the Matrix, nor do their programs. 

Object-orientation represents objects falsely, like the false construct of a river. What is described as an object is really just a series of causally-related values, just as a river is a way to associate an identity with something which is constantly changing. Thinking this way is comfortable. As humans, we understand a sense of self as one of the things that makes us human.

When Hickey breaks "perceptive objectivity" down into its component terms, this drives home the conceptual differences between object-oriented and functional:

* A **value** is an immutable entity like a number, quantity or immutable composite thereof.
* **Identity** is a putative construct used to associate a series of causally-related values.
* **Time** is the relative before and after ordering of causally-related values.
* **State** is the value of an identity at any one point in time.

## “Perception is massively parallel and requires no coordination”** 

Or, *How to Write Usable, Functional Programs*

Hickey uses a photograph of a major league baseball game to demonstrate how a photograph is analogous to the parallel nature of perception. The photograph of the baseball game doesn't require the game and its attendees to stop whatever there doing. Everyone continues without affection from the photograph being taken.

**How do we model the real world of parallel perception and activity in our programs?**

Hickey’s answer is founded on the use of persistent data structures. Persistent data structures enable the programmer to maintain sanity through immutability. Every time a function is called both the before and after are captured by the persistent data store. The idea of mutability is dismissed. Every initial and ending value is separately maintained. Concerns of size are managed by b-trees and garbage collections. 

The construct of identity is not built via perception of a value or values which may or may not change over time but via a time-based construct of causally-related values.

An analogy used to describe persistent data structures was that of a tree. Trees grow REALLY big because they collect old versions of themselves. The analogy of a persistant data structure as like a tree was an “A ha!” moment for me. I will save the readers of this post from a diatribe on CouchDB, but mention it me understand the objectives of its design. A CouchDB database grows like a tree in that all its previous versions of itself are kept around.

## In conclusion: Relax.

“Are we there yet?” is littered with inspiring anecdotes, and I only got the full oompf of some by pausing the recording to chew, swallow and digest. A lot come from Hickey himself, but many others come from the philosopher Alfred North Whitehead:

“Civilization advances by extending the number of important operations which we can perform without thinking about them.”

Perhaps we can write better programs by writing programs we don't have to worry about so much. I hope by adopting some of Hickey’s ideas on how to write functional programs, I can program without going crazy.

\* During Q&A, Hickey responds to an attendee who asks a long-winded philosophical question which wasn’t really a question but ostentation, with the statement “I’m just trying to program without going crazy”.

\*\* Hickey, quoted from ["Are we there yet?"](http://www.infoq.com/presentations/Are-We-There-Yet-Rich-Hickey)
