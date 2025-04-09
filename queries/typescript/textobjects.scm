;; Match jasmine tests
(expression_statement (call_expression function: (identifier) @function.name (#any-of? @function.name "it" "fit" "xit") arguments: _ )) @test.outer
