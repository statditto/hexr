#' Transform board to long dataframe
#'
#' @param board An \eqn{ (\text{size}+2) \times (\text{size}+2) } matrix.
#'
#' @returns An dataframe for plotting board.
#' @export
#'
#' @examples board_to_long(board)
board_to_long <- function(board) {
  size <- nrow(board)
  data.frame(
    row = rep(1:size, each = size),
    col = rep(1:size, times = size),
    player = as.vector(board)
  )
}
