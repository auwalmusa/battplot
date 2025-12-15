test_that("batt_save_linkedin validates filename", {
  p <- ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt)) + ggplot2::geom_point()
  
  expect_error(batt_save_linkedin(p, filename = 123))
  expect_error(batt_save_linkedin(p, filename = "plot.jpg"))
})

test_that("batt_save_linkedin writes a png file", {
  p <- ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt)) + ggplot2::geom_point()
  
  tmp <- tempfile(fileext = ".png")
  batt_save_linkedin(p, filename = tmp)
  
  expect_true(file.exists(tmp))
  expect_true(file.info(tmp)$size > 0)
})
