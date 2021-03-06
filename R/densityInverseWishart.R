#' Inverse Wishart density (multivariate, continuous, bounded space, prior only)
#'
#' @inherit Density
#' @param nu    Either a fixed value or a prior density for the degree-of-freedom scalar parameter.
#' @param sigma Either a fixed value or a prior density for the scale matrix parameter.
#'
#' @family Density
#'
#' @examples
#' # As a prior for the covariance matrix
#' InverseWishart(nu = 5, sigma = matrix(c(1, 0, 0, 1), 2, 2))
InverseWishart <- function(nu = NULL, sigma = NULL, ordered = NULL, equal = NULL, bounds = list(NULL, NULL),
                    trunc  = list(NULL, NULL), k = NULL, r = NULL, param = NULL) {
  PriorOnlyMultivariateDensity("InverseWishart", ordered, equal, bounds, trunc, k, r, param, nu = nu, sigma = sigma)
}

#' @keywords internal
#' @inherit prior
prior.InverseWishart <- function(x) {
  check_psd(x$sigma)

  truncStr <- make_trunc(x, "")
  sprintf("%s%s ~ inv_wishart(%s, %s) %s;", x$param, x$k, x$nu, matrix_to_stan(x$sigma), truncStr)
}
