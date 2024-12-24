#' dfs
#'
#' @param board An \eqn{ (\text{size}+2) \times (\text{size}+2) } matrix.
#' @param player An integer of player number.
#' @param visited An \eqn{ (\text{size}+2) \times (\text{size}+2) } matrix.
#' @param row An integer. This parameter shows row number of board.
#' @param col An integer. This parameter shows col number of board.
#'
#' @returns A Logical.
#' @export
#'
#' @examples dfs(board, 1, visited, 2, 3)
dfs <- function(board, player, visited, row, col) {
  if (visited[row, col] || is.na(board[row, col]) || board[row, col] != player) {
    return(FALSE)
  }
  visited[row, col] <- TRUE

  size <- nrow(board) - 2
  if ((player == 1 && col == size + 2) || (player == 2 && row == size + 2)) {
    return(TRUE)
  }

  neighbors <- get_neighbors(row, col, size + 2)
  for (neighbor in neighbors) {
    if (dfs(board, player, visited, neighbor[1], neighbor[2])) {
      return(TRUE)
    }
  }
  return(FALSE)
}
