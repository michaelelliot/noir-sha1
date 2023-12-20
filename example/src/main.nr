use dep::sha1::sha1;

fn main(input: [u8; 128], input_len: u16, hash: pub [u8; 20]) {
    let compare_hash = sha1(input, input_len);
    assert(hash == compare_hash);
}
