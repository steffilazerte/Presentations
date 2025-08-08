
# Install extensions
quarto::quarto_add_extension("fontawesome")
quarto::quarto_add_extension("academicons")


# Render Quarto qmd to html
quarto::quarto_render()


# Print to pdf
#
# Use decktape docker image
#
# In the slides folder, in the terminal:
# sudo docker run --rm -t -v `pwd`:/slides -v .:/home/user ghcr.io/astefanutti/decktape reveal --fragments /home/user/index.html slides.pdf
#
# Note the use of 'reveal --fragments' which may or may not be necessary in future (see https://github.com/astefanutti/decktape/issues/353)



#pagedown::chrome_print("index.html", extra_args = "--font-render-hinting=none")
