test_that("png generation works", {
  expect_snapshot_file(save_as_image({
    plot(c(1, 2, 3, 4))
  },
  device = png,
  file = file.path(tempdir(),"test.png")
  ))
})

test_that("jpeg generation works", {
  expect_snapshot_file(save_as_image({
    plot(c(1,2,3,4))
  },
  device = jpeg,
  file = file.path(tempdir(),"test.jpeg")
  ))
})


test_that("tiff generation works", {
  expect_snapshot_file(save_as_image({
    plot(c(1,2,3,4))
  },
  device = tiff,
  file = file.path(tempdir(),"test.tif")
  ))
})

test_that("bmp generation works", {
  expect_snapshot_file(save_as_image({
    plot(c(1,2,3,4))
  },
  device = bmp,
  file = file.path(tempdir(),"test.bmp")
  ))
})
