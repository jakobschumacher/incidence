context("First-last dates customisation")

test_that("Objects match reference", {
  skip_on_cran()

  dat <- c(0, 1, 1, 2, 2, 2, 4, 4, 5, 6, 6, 6, 6)
  i1 <- incidence(dat)
  i2 <- incidence(dat, first_date = -10)
  i3 <- incidence(dat, last_date = 10)
  i4 <- subset(i1, from = 3, to = 5)
  i5 <- incidence(dat, first_date = 3, last_date = 5)

  expect_equal_to_reference(i1, file = "rds/incidence.firstlast1.rds")
  expect_equal_to_reference(i2, file = "rds/incidence.firstlast2.rds")
  expect_equal_to_reference(i3, file = "rds/incidence.firstlast3.rds")
  expect_equal_to_reference(i4, file = "rds/incidence.firstlast4.rds")

  expect_identical(i4, i5)

})
