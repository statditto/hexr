#' Plot hex board
#'
#' @param board An \eqn{ (\text{size}+2) \times (\text{size}+2) } matrix.
#'
#' @returns A plot.
#' @export
#'
#' @examples plot_hex_board(board)
plot_hex_board <- function(board) {
  long_board <- hexr::board_to_long(board) |>
    na.omit()
  ggplot2::ggplot(long_board, ggplot2::aes(x = col + row * 0.5, y = row * sqrt(3) / 2, z = player)) +
    ggplot2::stat_summary_hex(binwidth = c(1, 1),
                     linewidth = 1,
                     colour = "black",
                     fun = function(x) mean(x, na.rm = TRUE)) +
    ggplot2::scale_fill_gradient2(low = "white", mid = "#FF0033", high = "#00B900", midpoint = 1, na.value = "grey") +
    ggplot2::coord_fixed() +
    ggplot2::theme_minimal() +
    ggplot2::theme(legend.position = 'none') +
    ggplot2::labs(x = "Column", y = "Row", fill = "Player") +
    ggplot2::xlim(0, ncol(board) + ncol(board) * 0.5) +
    ggplot2::ylim(0, nrow(board) * sqrt(3) / 2 + 1)
}
