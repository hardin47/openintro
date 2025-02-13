#' Population of Lego Sets for Sale between Jan. 1, 2018 and Sept. 11, 2020.
#'
#' Data about Lego Sets for sale. Based on JSDSE article by Anna Peterson and Laura Ziegler
#' Data from their article was scrapped from multiple sources including brickset.com
#' @name lego_population
#' @docType data
#' @format A data frame with 1304 rows and 14 variables.
#' \describe{
#'   \item{item_number}{Set Item number}
#'   \item{set_name}{Name of the set.}
#'   \item{theme}{Set theme: Duplo, City or Friends.}
#'   \item{pieces}{Number of pieces in the set.}
#'   \item{price}{Recommended retail price from LEGO.}
#'   \item{amazon_price}{Price of the set at Amazon.}
#'   \item{year}{Year that it was produced.}
#'   \item{ages}{LEGO's recommended ages of children for the set }
#'   \item{pages}{Pages in the instruction booklet.}
#'   \item{minifigures}{Number of LEGO people in the data, if unknown "NA" was recorded.}
#'   \item{packaging}{Type of packaging: bag, box, etc.}
#'   \item{weight}{Weight of the set of LEGOS in pounds and kilograms.}
#'   \item{unique_pieces}{Number of pieces classified as unique in the instruction manual.}
#'   \item{size}{Size of the lego pieces: Large if safe for small children and Small for older children.}
#' }
#'
#' @examples
#' library(ggplot2)
#' library(dplyr)
#'
#' lego_population %>%
#'   filter(theme == "Friends" | theme == "City" ) %>%
#'   ggplot(aes(x = pieces, y = amazon_price)) +
#'   geom_point(alpha = 0.3) +
#'   labs(
#'     x = "Pieces in the Set",
#'     y = "Amazon Price",
#'     title = "Amazon Price vs Number of Pieces in Lego Sets",
#'     subtitle = "Friends and City Themes"
#'   )
#'
#' @source [Peterson, A. D., & Ziegler, L. (2021). Building a multiple linear regression model with LEGO brick data. Journal of Statistics and Data Science Education, 29(3),1-7.](https://doi.org/10.1080/26939169.2021.1946450)
#' @source [BrickInstructions.com. (n.d.). Retrieved February 2, 2021 from](lego.brickinstructions.com)
#' @source [Brickset. (n.d.). BRICKSET: Your LEGO® set guide. Retrieved February 2, 2021 from](https://brickset.com)
#' @keywords datasets
#'
"lego_population"
