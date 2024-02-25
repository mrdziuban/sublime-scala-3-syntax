# Scala 3 syntax highlighting for Sublime Text

This repository provides a modified version of Sublime Text's default syntax highlighting for Scala.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Installation](#installation)
  - [Fresh installation](#fresh-installation)
  - [Update an installation](#update-an-installation)
- [Supported syntax](#supported-syntax)
  - [`enum`](#enum)
    - [Before](#before)
    - [After](#after)
    - [Known limitations](#known-limitations)
  - [`export`](#export)
    - [Before](#before-1)
    - [After](#after-1)
  - [`given`](#given)
    - [Before](#before-2)
    - [After](#after-2)
    - [Known limitations](#known-limitations-1)
  - [`using`](#using)
    - [Before](#before-3)
    - [After](#after-3)
    - [Known limitations](#known-limitations-2)
  - [`opaque type`](#opaque-type)
    - [Before](#before-4)
    - [AFter](#after)
  - [`inline`](#inline)
    - [Before](#before-5)
    - [After](#after-4)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Installation

### Fresh installation

Clone the latest branch of the repository into your Sublime Text packages directory:

```bash
# On macOS
cd "$HOME/Library/Application Support/Sublime Text/Packages"
git clone https://github.com/mrdziuban/sublime-scala-3-syntax --branch upd-build-4169 --single-branch
```

To associate the syntax with all `.scala`, `.sbt`, and `.sc` files, open a settings file:

```bash
subl "$HOME/Library/Application Support/Sublime Text/Packages/User/Scala 3.sublime-settings"
```

and add the following content:

```json
{
  "extensions": ["scala", "sbt", "sc"]
}
```

### Update an installation

Check out and pull the latest branch:

```bash
cd "$HOME/Library/Application Support/Sublime Text/Packages/sublime-scala-3-syntax"
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

- `enum` members specified with shorthand syntax aren't highlighted, e.g.
    - ![shorthand enum members](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/45f7307d-c2b4-4db0-95ec-3436633f127b)
- `enum` members names aren't highlighted until the `extends` keyword is present

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

- The types of anonymous `given`s are not highlighted correctly, e.g.
    - ![anonymous given](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/623f9c26-e23e-490b-b005-6ae31c8de1a6)

### `using`

#### Before

![using before](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/6af53700-6d6b-4646-b911-10ae658d6825)

#### After

![using after](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/07cecd68-f779-4c3e-82ef-c2414b6475ad)

#### Known limitations

- The types of anonymous `using` parameters aren't highlighted, e.g.
    - ![anonymous using](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/4bfcacbf-d95f-43ff-842d-80aa21e0f133)

### `opaque type`

#### Before

![opaque type before](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/ec11e5e9-b865-4718-87f8-8b0c049dfc7a)

#### AFter

![opaque type after](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/532cf571-11c7-47cb-b9d6-f5ec7f311b35)

### `inline`

#### Before

![inline before](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/eb18472c-8b0e-4984-8f5b-94581ad8fe3c)

#### After

![inline after](https://github.com/mrdziuban/sublime-scala-3-syntax/assets/4718399/aa7b5e9f-f243-4120-8935-94c0887d62a2)
