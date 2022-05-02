---
title: Currency Provider - Money
---

The Currency Provider allows you to grab all the known Currencies. It also has
a `query` method to pass in `CurrencyProviderQuery`s to return various results.

## Usage

```php
use SonsOfPHP\Component\Money\CurrencyProvider;

$provider = new CurrencyProvider();

foreach ($provider->getCurrencies() as $currency) {
    // Do something with each currency
}

// Check to see if the provider has the currency you are looking for
$hasCurrency = $provider->hasCurrency('USD');

// You can get a Currency like this. If the Currency does not exist
// it will throw an exception.
$currency = $provider->getCurrency('USD');

$code      = $currency->getCurrencyCode(); // USD
$numCode   = $currency->getNumericCode(); // 840
$minorUnit = $currency->getMinorUnit(); // 2
```
