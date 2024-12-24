#' Check hex winner
#'
#' @param board An \eqn{ (\text{size}+2) \times (\text{size}+2) } matrix.
#'
#' @returns An integer of winner number.
#' @export
#'
#' @examples check_hex_winner(board)
check_hex_winner <- function(board) {
  size <- nrow(board) - 2
  visited <- matrix(FALSE, nrow = size + 2, ncol = size + 2)

  # プレイヤー1の勝利チェック（左から右）
  if (!is.na(board[2, 1]) && board[2, 1] == 1 && hexr::dfs(board, 1, visited, 2, 1)) {
    return(1)
  }

  # プレイヤー2の勝利チェック（上から下）
  visited[,] <- FALSE
  if (!is.na(board[1, 2]) && board[1, 2] == 2 && hexr::dfs(board, 2, visited, 1, 2)) {
    return(2)
  }

  return(NULL)
}
