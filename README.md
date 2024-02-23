# Scala 3 syntax highlighting for Sublime Text

This repository provides a modified version of Sublime Text's default syntax highlighting for Scala.

## Installation

For a fresh installation, clone the latest branch of the repository into your Sublime Text packages directory:

```bash
# On macOS
cd '~/Library/Application Support/Sublime Text/Packages'
git clone https://github.com/mrdziuban/sublime-scala-3-syntax --branch upd-build-4169 --single-branch
```

To update an existing installation, checkout and pull the latest branch:

```bash
cd '~/Library/Application Support/Sublime Text/Packages/sublime-scala-3-syntax'
git fetch
git checkout upd-build-4169
git pull origin upd-build-4169
```

## Supported syntax

### `enum`

#### Before

![enum before](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/91cc3654-d8f0-4071-a5be-cbdb0cfe67d6)

#### After

![enum after](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/7fd70f44-e995-4897-b889-1deee61e44f0)

#### Known limitations

- [ ] `enum` members specified with shorthand syntax aren't highlighted, e.g.
    - ```scala
      enum Foo {
        case Bar, Baz
          // ^^^^^^^^
          // these aren't highlighted
      }
      ```
- [ ] `enum` members names aren't highlighted until the `extends` keyword is present

### `export`

#### Before

![export before](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/fba6c5ce-fc6d-46a4-b1d2-b0166c7b5506)

#### After

![export after](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/2502b43e-baf5-407b-88a5-01a5867cf2d4)

### `given`

#### Before

![given before](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/3e326c9e-43f5-44d6-9f27-76f9a77a0c42)

#### After

![given after](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/9fb76a24-a764-4854-80b8-43ae68f4f211)

#### Known limitations

- [ ] The `given` keyword isn't highlighted if a name is not provided
- [ ] A `given`'s name is highlighted as if it was a `def` until a type ascription is added

### `using`

#### Before

![using before](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/6af53700-6d6b-4646-b911-10ae658d6825)

#### After

![using after](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/07cecd68-f779-4c3e-82ef-c2414b6475ad)

#### Known limitations

- [ ] The types of `using` parameters aren't highlighted

### `opaque type`

#### Before

![opaque type before](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/ec11e5e9-b865-4718-87f8-8b0c049dfc7a)

#### AFter

![opaque type after](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/532cf571-11c7-47cb-b9d6-f5ec7f311b35)