# load packages ----------------------------------------------------------------

library(xaringanthemer)

# set colors -------------------------------------------------------------------
duo_accent(
  primary_color      = "#0F4C81", # pantone classic blue
  secondary_color    = "#A2B8D4", # pantone cashmere blue
  header_font_google = google_font("Raleway"),
  text_font_google   = google_font("Raleway", "300", "300i"),
  code_font_google   = google_font("Fira Code"),
  text_font_size     = "30px",
  outfile            = "materials/xaringan-themer.css"
)
