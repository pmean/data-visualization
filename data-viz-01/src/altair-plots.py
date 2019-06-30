import pandas as pd
import altair as alt
fn = "data-viz-01/data/saratoga-house-prices.csv"
df = pd.read_csv(fn)
df
ch0 = alt.Chart(df).mark_point().encode(
      x='Age',y='Price')
ch0.save("basic-scatterplot.html")
ch1 = alt.Chart(df).mark_point().encode(
  x="Age", y="Price", color="Baths")
ch1.save("altair-color-baths.html")
