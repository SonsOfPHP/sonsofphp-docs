---
title: CQRS - Overview
---

## Installation

```shell
composer require sonsofphp/cqrs
```

## Usage

### Commands

You can create commands pretty easy by just extending the
`AbstractCommandMessage` class.

```php
<?php
use SonsOfPHP\Component\Cqrs\Command\AbstractCommandMessage;
use Symfony\Component\OptionsResolver\OptionsResolver;

final class ExampleCommand extends AbstractCommandMessage
{
    protected function configureOptions(OptionsResolver $resolver): void
    {
        // Configure allowed options here
    }
}
```

To use the command, you just create a new instance of the command.

```php
<?php
// Your options are defined in the command. It will only allow the options
// that you configure and using the OptionsResolver, you can ensure the options
// passed in are what needs to be passed in.
$options = [/*...*/];
$command = new ExampleCommand($options);
```

### Queries

```php
<?php
use SonsOfPHP\Component\Cqrs\Query\QueryInterface;

final class ExampleQuery implements QueryInterface
{
    private $arg;

    public function __construct($arg)
    {
        $this->arg = $arg;
    }

    public function getArg()
    {
        return $this->arg;
    }
}
```
