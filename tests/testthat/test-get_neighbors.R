test_that("get neighbors of hex", {
  expect_equal(get_neighbors(1, 1, 5), list(c(1,2),c(2,1)))
})
