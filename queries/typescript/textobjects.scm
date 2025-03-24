;; Note: the following was written by AI.......
;;
;; Navigation objects for "it" function calls
(call_expression
  function: (identifier) @_func
  (#eq? @_func "it")
  arguments: (arguments)) @test.it

;; Define movement targets
((call_expression
  function: (identifier) @_func
  (#eq? @_func "it")) @test.it.outer)

;; Define text objects
((call_expression
  function: (identifier) @_func
  (#eq? @_func "it")
  arguments: (arguments
    (string) @_str
    .
    (_))) @test.it.inner)
