#' Get neighbors of hex
#'
#' @param row An integer. This parameter shows row number of board.
#' @param col An integer. This parameter shows col number of board.
#' @param board_size An integer. This parameter shows board size.
#'
#' @returns A list of position of board.
#' @export
#'
#' @examples neighbors <- get_neighbors(1, 1, 5)
get_neighbors <- function(row, col, board_size) {
  directions <- list(c(-1, 0), c(-1, 1), c(0, -1), c(0, 1), c(1, -1), c(1, 0))
  neighbors <- lapply(directions, function(d) c(row + d[1], col + d[2]))
  valid_neighbors <- Filter(function(pos) {
    pos[1] >= 1 && pos[1] <= board_size && pos[2] >= 1 && pos[2] <= board_size
  }, neighbors)
  return(valid_neighbors)
}
