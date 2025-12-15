test_that("batt_cols returns named hex colours", {
  cols <- batt_cols()
  
  expect_true(is.character(cols))
  expect_true(length(cols) >= 5)
  expect_true(all(nzchar(names(cols))))
  
  # Basic hex format check
  expect_true(all(grepl("^#[0-9A-Fa-f]{6}$", cols)))
})

test_that("batt_pal returns the requested number of colours", {
  p3 <- batt_pal("main", n = 3)
  expect_length(p3, 3)
  expect_true(all(grepl("^#[0-9A-Fa-f]{6}$", p3)))
  
  p6 <- batt_pal("cool", n = 6)
  expect_length(p6, 6)
  
  expect_error(batt_pal("unknown", n = 3))
  expect_error(batt_pal("main", n = 0))
})
