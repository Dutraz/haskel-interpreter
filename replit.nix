{ pkgs }: {
    deps = [
      pkgs.haskellPackages.happy
        pkgs.haskellPackages.ghc
        pkgs.haskell-language-server
    ];
}