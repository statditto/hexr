#' Initialize a board
#'
#' @param size An integer. This parameter shows board size.
#'
#' @return An \eqn{ (\text{size}+2) \times (\text{size}+2) } matrix.
#' @export
#'
#' @examples
#' board <- initialize_hex_board(5)
initialize_hex_board <- function(size = 11) {
  board <- matrix(0, nrow = size + 2, ncol = size + 2)
  board[1, ] <- 2  # 上の境界を2Pに
  board[size + 2, ] <- 2  # 下の境界を2Pに
  board[, 1] <- 1  # 左の境界を1Pに
  board[, size + 2] <- 1  # 右の境界を1Pに
  board[1, 1] <- NA
  board[size + 2, size + 2] <- NA
  return(board)
}
