;; Note: the following was written by AI.......
;;
;; Navigation objects for "it" function calls
(call_expression
  function: (identifier) @_func
  (#match? @_func "^(it|fit|xit)$")
  arguments: (arguments)) @test.it

;; Define movement targets - more general pattern
(call_expression
  function: (identifier) @_func
  (#match? @_func "^(it|fit|xit)$")) @test.it.outer

;; Define text objects - targeting the exact structure
(call_expression
  function: (identifier) @_func
  (#match? @_func "^(it|fit|xit)$")
  arguments: (arguments
    (_) @_test_name
    (_))) @test.it.inner

;; Additional capture for all test functions to ensure complete coverage
(call_expression
  function: (identifier) @_func
  (#match? @_func "^(it|fit|xit)$")
  arguments: _) @test.it.all
