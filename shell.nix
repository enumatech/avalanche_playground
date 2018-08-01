with import (
    # to ge the hash.
builtins.fetchTarball {
    # To update
    #     curl -sI https://nixos.org/channels/nixpkgs-unstable/nixexprs.tar.xz | awk '/Location:/ {print $2}'
    url = "https://d3g5gsiof5omrk.cloudfront.net/nixpkgs/nixpkgs-18.09pre146409.2391d1dbf31/nixexprs.tar.xz";
    # To get the hash
    #     nix-prefetch-url --unpack $url
    sha256 = "08iy7dlyy5f7w1npajrb5pi7gl6mwfjimkkpbcqmkz01bam9bq5x";
  }
) { };

mkShell rec {

  # Might be needed on mac OS? If so, consider setting on darwin automatically.
  # LC_ALL="en_US.UTF-8";

  buildInputs = [
    ncurses
    python36
    python36Packages.networkx
  ];

}
