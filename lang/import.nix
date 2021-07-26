let
  fibsFrom = n: m: {
    head = n;
    tail = fibsFrom m (n + m);
  };
  
  fibs = fibsFrom 1 1;
in
  (import ./stream_mod.nix).elemAt fibs 30
