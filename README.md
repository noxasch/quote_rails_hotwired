# README

This codebase is source from <a href="https://www.hotrails.dev/turbo-rails">hotrails.dev/turbo-rails</a>  tutorial with some adjustment like using tailwindcss instead of scss. Rspec instead of minitest.

## VSCode extensions
- [Ruby LSP](Shopify.ruby-lsp)
- [solargraph](castwide.solargraph)
- [ruby-rubocop-revived](LoranKloeze.ruby-rubocop-revived)
- [Ruby Around the Block](elliotlarson.ruby-around-the-block)
- [Tailwind CSS Intellisense](bradlc.vscode-tailwindcss)
- [Rails](bung87.rails)
- [endwise](kaiwood.endwise)

## Getting Started

```sh
bin/setup
```

## Development

```sh
bin/dev
```

## System test
1. update chromium version accordingly in `spec/rails_helper.rb`
2. Run `bundle exec rspec`

## ERD

![](https://www.plantuml.com/plantuml/dsvg/TOyz2iCm38Ltdy9xoHq2xLBeqg6p4R46WIMdZZo4f7SliJ4X_TdavqyFVVsaa3HpC2XAEjjpv15ajekn9ol0Q5xjwp5XgZaoKDY6eTAE_8xTSrJSz_zXDnAyAl856kr12_tS2dwonrQFqv1eL8fIrw3Gsvo5r8s9XW864dIaoCv3QpPDT5sxBYv5xYEh9gRwrEXmjTaVtu3fKNpcy0O0)

<details>
<summary>PUML</summary>

```plantuml
@startuml
entity Company {
 + name
}
entity User {
 + email
 + company_id
}
entity Quote {
 + name
 + company_id
}
entity LineItemDate {
 + date
 + quote_id
}
entity LineItem {
 + name
 + description
 + quantity
 + unit_price
 + line_item_date_id
}

Company ||--o{ User
Company ||--o{ Quote
Quote ||--o{ LineItemDate
LineItemDate ||--o{ LineItem
@enduml
```

</details>

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
