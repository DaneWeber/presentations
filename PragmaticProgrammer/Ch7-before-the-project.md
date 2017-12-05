# Before the project

Chapter 7 of _The Pragmatic Programmer_



## 26. Decoupling and the Law of Demeter
 - Minimize coupling
 - The Law of Demeter for Functions (principle of least knowledge)
 - Does it really make a difference?


### Law of Demeter

Kind of like _DRY (Don't Repeat Yourself)_ for object attributes and method calls.

 - Encapsulate knowledge.
 - Don't require micromanagement.
 - Enable future changes.

<span class="footnote">Code examples copied from https://www.dan-manges.com/blog/37</span>


#### Bad:

```Ruby
class Wallet
  attr_accessor :cash
end
class Customer
  has_one :wallet
end
class Paperboy
  def collect_money(customer, due_amount)
    if customer.wallet.cash < due_ammount
      raise InsufficientFundsError
    else
      customer.wallet.cash -= due_amount  # Law of Demeter violation!
      @collected_amount += due_amount
    end
  end
end
```


#### Hmm:

```Ruby
class Wallet
  attr_accessor :cash
end
class Customer
  has_one :wallet

  # attribute delegation
  def cash
    @wallet.cash
  end
end

class Paperboy
  def collect_money(customer, due_amount)
    if customer.cash < due_ammount
      raise InsufficientFundsError
    else
      customer.cash -= due_amount
      @collected_amount += due_amount
    end
  end
end
```


Don't pickpocket - ask for the cash

![stealing wallet from back pocket](https://media.giphy.com/media/7oSD3f9zkP4g8/giphy.gif)


#### Better:

```Ruby
class Wallet
  attr_accessor :cash
  def withdraw(amount)
     raise InsufficientFundsError if amount > cash
     cash -= amount
     amount
  end
end
class Customer
  has_one :wallet
  # behavior delegation
  def pay(amount)
    @wallet.withdraw(amount)
  end
end
class Paperboy
  def collect_money(customer, due_amount)
    @collected_amount += customer.pay(due_amount)
  end
end
```



## 27. Metaprogramming
 - Dynamic configuration
 - Metadata-driven applications
   - Business logic
   - Cooperative configuration
 - Don't write dodo-code


### Expected benefits of metadata-driven applications

 - Decouple design for a more flexible and adaptable program.
 - Defer details out of the program.
 - <span class="fragment zoom-in highlight-current-red">Customize without recompiling.</span>
 - Provide easy work-arounds for critical bugs.
 - Express details in a manner closer to the domain (DSL?)
 - Reusable code.
 
Note: Flexible, easy-to-change code is important. We do a lot of metadata-driven work with our flags.


#### Code vs. configuration

![Electro-magnetic spectrum](https://ka-perseus-images.s3.amazonaws.com/1f69f2373d9136ed9a061a3a1b64cbffe3abc9b2.png)

Note: both code and configuration are human-readable computer instructions, so I see them on a continuum.


#### YAGNI

[!['please pass the salt' leads to a solution for passing arbitrary condiments](https://imgs.xkcd.com/comics/the_general_problem.png)](https://www.xkcd.com/974/)


#### Adapt or die

!['It is not the strongest of the species that survives, nor the most intelligent, but the one most responsive to change.' -Charles Darwin, 1809](http://www.adamyounggolf.com/wp-content/uploads/2015/11/charles-darwin-survival-of-the-fittest11.jpg)



## 28. Temporal coupling
 - Workflow
 - Architecture
 - Design for concurrency
   - Cleaner interfaces
   - Deployment


### Prepare for race conditions and temporal paradoxes

![Back to the Future - Delorean time machine hitting 88 mph](https://media.giphy.com/media/7TZvWKVkm0xXi/giphy.gif)


### We live in the future

![A typical microservie architecture on AWS](https://image.slidesharecdn.com/microservicesarchitecturesonawsfinal-161012055233/95/microservices-architectures-on-amazon-web-services-13-638.jpg?cb=1476251613)

Note: Microservices are real!



## 29. It's just a view
 - Publish/subscribe
 - Model-view-controller
   - Java tree view
 - Beyond GUIs
 - Still coupled (after all these years)


My take-aways:
 - Decouple in a way that makes sense.
 - Abstract and encapsulate especially where the purpose is different (e.g. a model, controller, view, view-model, presenter, view-of-a-view)
 - Make future changes easier.

Note: See page 163 for the view-of-a-view graph.



## 30. Blackboards
 - Blackboard implementations
 - Application example


### Example blackboard architecture

<span class="footnote">Cyberspace situational awareness system high-level architecture slides from Tim Bass<br /> https://www.slideshare.net/TimBassCEP/a-high-level-blackboard-architecture-for-cyber-sa</span>


![Blackboard, controller, agents, and humans](https://image.slidesharecdn.com/blackboardprototypebass02-170507140432/95/a-high-level-blackboard-architecture-for-cyber-sa-9-638.jpg?cb=1494165908)

Note: BlackBoard, Knowledge Source {Sensors, Knowledge Processors, Actuators}, blackboard Controller


![Technology stack](https://image.slidesharecdn.com/blackboardprototypebass02-170507140432/95/a-high-level-blackboard-architecture-for-cyber-sa-10-638.jpg?cb=1494165908)



![That's all folks!](https://media.giphy.com/media/mR3dXKpI6P8CA/giphy.gif)
