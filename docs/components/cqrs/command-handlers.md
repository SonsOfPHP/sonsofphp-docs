---
title: Command Handlers
---

# Command Handlers

Once you create a Command, you need to create a Command Handler to handle that
command. Command Handlers do NOT return any results.

```php
<?php
use SonsOfPHP\Component\Cqrs\Command\CommandMessageHandlerInterface;

final class ExampleCommandHandler implements CommandMessageHandlerInterface
{
}
```
