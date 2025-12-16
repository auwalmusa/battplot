# Save a plot for LinkedIn (16:9)

Exports a crisp PNG using ragg. Defaults are tuned for LinkedIn posts.

## Usage

``` r
batt_save_linkedin(plot, filename, width = 12, height = 6.75, dpi = 300)
```

## Arguments

- plot:

  A ggplot object.

- filename:

  Output file path, should end with .png

- width:

  Width in inches.

- height:

  Height in inches.

- dpi:

  Resolution in dots per inch.

## Value

The filename, invisibly.
