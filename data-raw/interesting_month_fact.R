## code to prepare `interesting_month_fact` dataset goes here

interesting_month_fact <- tibble::tribble(
  ~Month,      ~Fact,
  "January",   "January is named after Janus, the Roman god of doors and gates, symbolizing beginnings and transitions.",
  "February",  "February once had 30 days, but over time, changes in the calendar reduced it to 28 or 29 days.",
  "March",     "March was the first month of the year in the Roman calendar. It is named after Mars, the Roman god of war.",
  "April",     "April is often associated with the start of spring in the Northern Hemisphere, and its name might come from the Latin word 'aperire,' meaning 'to open,' symbolizing the blossoming of flowers and trees.",
  "May",       "May is named after Maia, an earth goddess of growing plants, which aligns with the season's focus on growth and fertility.",
  "June",      "June is named after Juno, the Roman goddess of marriage and the well-being of women, making it a popular month for weddings.",
  "July",      "July is named after Julius Caesar, who was born in this month. It was previously known as Quintilis, the fifth month of the Roman calendar.",
  "August",    "August is named after Emperor Augustus. Like July, it was renamed in honor of a Roman leader, replacing its original name, Sextilis.",
  "September", "Despite being the ninth month in the Gregorian calendar, September's name comes from 'septem,' meaning seven, as it was the seventh month in the ancient Roman calendar.",
  "October",   "October is associated with harvest festivals and Halloween, which originates from the ancient Celtic festival of Samhain, marking the end of the harvest season.",
  "November",  "November, from 'novem,' meaning nine, is a month where many countries observe Remembrance Day or Veterans Day, honoring those who served in wars.",
  "December",  "December is named after 'decem,' meaning ten in Latin, reflecting its original position as the tenth month in the Roman calendar. It is also known for the celebration of various winter festivals like Christmas and Hanukkah."
)

usethis::use_data(interesting_month_fact, overwrite = TRUE)
