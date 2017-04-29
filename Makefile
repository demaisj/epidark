##
## epidark - A dark theme for Epitech Intra
## Author: demais (Jordan Demaison)
##

SASS	=	sass
RM	=	rm -f

SASSFLAGS = --style expanded

DIST	=	dist
SRC	=	src
NAME	=	epidark.user
IN = $(SRC)/$(NAME).scss
OUT = $(DIST)/$(NAME).css


all: $(OUT) $(OUTMIN)

$(OUT): $(SRC)/**
	$(SASS) $(SASSFLAGS) $(IN) $(OUT)

clean:
	$(RM) $(OUT)

re: clean all

.PHONY: all clean