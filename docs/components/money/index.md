---
title: Money - Overview
---

The Money component was inspired by JSR 354 along with a few other ideas. It is
mainly used for services and sites dealing with money.

## Installation

```shell
composer require sonsofphp/money
```

## Usage

### Money

```php
use SonsOfPHP\Component\Money\Money;
use SonsOfPHP\Component\Money\Currency;

// Can use the Money Class like this
$money = new Money(100, new Currency('USD'));
$amount = $money->getAmount(); // 100

// Or like this
$money = Money::USD(100);
```

You can add and subtract different amounts to create new money.

```php
use SonsOfPHP\Component\Money\Money;

$money = Money::USD(100);

$newMoney1 = $money->add(Money::USD(100)); // Amount is now 200
$newMoney2 = $money->subtract(Money::USD(100)); // Amount is now 0

// The amount of the orginal Money does not change
$amount = $money->getAmount(); // Amount is 100
```

You can multiple and divide too.

```php
use SonsOfPHP\Component\Money\Money;

$money = Money::USD(100);

$newMoney1 = $money->multiply(5); // Amount is now 500
$newMoney2 = $money->divide(5); // Amount is now 20

// The amount of the orginal Money does not change
$amount = $money->getAmount(); // Amount is 100
```

### Currency
```php
use SonsOfPHP\Component\Money\Currency;

$currency = new Currency('USD');
// OR
$currency = Currency::USD();
```

## Operators

Operators allow you to change something about the Money and will return a new
instance of the Money. For example, the methods: add, subtract, multiply, and
divide on the `Money` class are all MoneyOperators.

You can create your own Money Operators and use them with the Money class out of
the box.

```php
$operator = new MyOwnMoneyOperator();
$newMoney = $money->with($operator);
```

Remember, MoneyOperators, will do something to the Money object and return a new
instance.

## Queries

Queries are used to answer questions about the Money. They can return different
values based on what you want.

You can also create and use your own money queries.

```php
$query = new DummyQuery();
$result = $money->query($query);
```

## Need Help?

Check out [Sons of PHP's Organization Discussions][discussions].

[discussions]: https://github.com/orgs/SonsOfPHP/discussions
