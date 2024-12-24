test_that("initialize board", {
  expect_equal(initialize_hex_board(1),
               matrix(c(NA,1,1,2,0,2,1,1,NA), nrow = 3, ncol = 3))
})
