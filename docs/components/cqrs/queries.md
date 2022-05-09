---
title: Queries
---

# Queries

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
