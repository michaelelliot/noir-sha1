# Noir SHA-1

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Nargo Test 🌌](https://github.com/michaelelliot/noir-sha1/actions/workflows/test.yml/badge.svg)](https://github.com/michaelelliot/noir-sha1/actions/workflows/test.yml)

This library contains an implementation of the SHA-1 hashing algorithm.

While SHA-1 is no longer considered secure for general use, it is still useful on resource-constrained devices for certain use cases.

One example is in smart cards where a random challenge is generated by a verifier and the smart card digitally signs a payload that contains a SHA-1 hash based on the random challenge.
This is still reasonably secure because the time window available for brute-forcing a SHA-1 hash is extremely limited.

## Security Notice

SHA-1 is deprecated for most security-sensitive applications but retains utility in specific, time-bound scenarios.

## Usage

In your `Nargo.toml` file, add the following dependency:

```toml
[dependencies]
sha1 = { tag = "v0.0.2", git = "https://github.com/michaelelliot/noir-sha1", directory = "crates/noir-sha1" }
```

Then use it in your Noir project like this:

```rust
use dep::sha1::{sha1};

fn main(input: [u8; 128], input_len: u16, hash: pub [u8; 20]) {
    // Generate SHA-1 hash digest of input
    let compare_hash = sha1(input, input_len);
    assert(hash == compare_hash);
}
```

## Example

Noir example source code: [`./example/src/main.nr`](./example/src/main.nr)

## Gates

ACIR Opcodes: 23501. Backend Circuit Size: 81495.

## License

MIT License

Copyright (c) 2023 Michael Elliot

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
