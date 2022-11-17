#!/usr/bin/env bash

# Grabs a screenshot and copies it into clipboard

import png:- | xclip -selection clipboard -t image/png
