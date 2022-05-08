---
title: Message Storage
---

# Message Repository

The message repository will store the event messages where and how you want them
to be stored. This is usually a database but could be anywhere. The [Aggregate
Repository](../../aggregates/storage/index.md) uses the Message Repository to save the event messages that were
raised.

??? tip "Best Practice"
    Best Practice is to store the event data in JSON format.

## Usage

```php
<?php
use SonsOfPHP\Component\EventSourcing\Message\Repository\MessageRepositoryInterface;
use SonsOfPHP\Component\EventSourcing\Message\MessageInterface;
use SonsOfPHP\Component\EventSourcing\Aggregate\AggregateIdInterface;
use SonsOfPHP\Component\EventSourcing\Aggregate\AggregateVersionInterface;

// @var MessageRepositoryInterface $messageRepository
// @var MessageInterface $message
$messageRepository->persist($message);

// @var AggregateIdInterface $aggregateId
// @var MessageInterface[] $eventMessages
$eventMessages = $messageRepository->find($aggregateId);

// or to grab event messages after a specific version
// @var AggregateVersionInterface $aggregateVersion
$eventMessages = $messageRepository->find($aggregateId, $aggregateVersion);
```

## InMemoryMessageRepository

This repository is mainly used for testing, however to keep the examples easy we
will start with this message repository.

```php
<?php
use SonsOfPHP\Component\EventSourcing\Message\Repository\InMemoryRepository;

$messageRepository = new InMemoryRepository();
```

## DoctrineDbalMessageRepository

The `DoctrineDbalMessageRepository` allows you to persist event messages in the
database.

```php
<?php
use SonsOfPHP\Component\EventSourcing\Message\Repository\DoctrineDbalMessageRepository;
use Doctrine\DBAL\Connection;
use SonsOfPHP\Component\EventSourcing\Message\Serializer\MessageSerializerInterface;
use SonsOfPHP\Component\EventSourcing\Message\Repository\TableSchema\TableSchemaInterface;

$messageRepository = new DoctrineDbalMessageRepository(
    $connection, // @var Connection
    $messageSerializer, // @var MessageSerializerInterface
    $tableSchema // @var TableSchemaInterface
);
```

The `TableSchemaInterface` defines what table to use along with the columns and
mapping information. They are easy to work with and create custom schemas.
