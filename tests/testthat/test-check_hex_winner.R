test_that("check winner", {
  expect_equal(check_hex_winner(initialize_hex_board()),
               NULL)
})
