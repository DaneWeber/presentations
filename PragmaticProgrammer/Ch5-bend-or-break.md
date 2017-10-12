# Bend, or Break

Chapter 5 of _The Pragmatic Programmer_



## 26. Decoupling and the Law of Demeter
 - Minimize Coupling
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
 - Dynamic Configuration
 - Metadata-Driven Applications
   - Business Logic
   - Cooperative Configuration
 - Don't Write Dodo-Code



## 28. Temporal Coupling
 - Workflow
 - Architecture
 - Design for Concurrency
   - Cleaner Interfaces
   - Deployment



## 29. It's Just a View
 - Publish/Subscribe
 - Model-View-Controller
   - Java Tree View
 - Beyond GUIs
 - Still Coupled (after all these years)



## 30. Blackboards
 - Blackboard Implementations
 - Application Example