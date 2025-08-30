return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      opts.options.opt.guicursor =
        "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block" -- block in all modes
      return opts
    end,
  },
}

