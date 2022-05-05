---
title: Operators - Money
---

Operators allow you to change something about the Money and will return a new
instance of the Money. For example, the methods: add, subtract, multiply, and
divide on the `Money` class are all MoneyOperators.

You can create your own Money Operators and use them with the Money class out of
the box.

```php
<?php
$operator = new MyOwnMoneyOperator();
$newMoney = $money->with($operator);
```

Remember, MoneyOperators, will do something to the Money object and return a new
instance.
