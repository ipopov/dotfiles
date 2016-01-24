SRCS =  bashrc bash_aliases inputrc tmux.conf vimrc

$(SRCS) :
	cp $@ ~/.$@

.PHONY: $(SRCS)

install: $(SRCS)
