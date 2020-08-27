LINK_TARGET = example.exec

# Here is a Make Macro that uses the backslash to extend to multiple lines.
OBJS =	\
 int_to_string.o \
 example.o
REBUILDABLES = $(OBJS) $(LINK_TARGET)

clean : 
	rm -f $(REBUILDABLES)
	echo Clean done

all : $(LINK_TARGET)
	echo All done


$(LINK_TARGET) : $(OBJS)
	ld $^ -o $@


%.o : %.s
	as $< -o $@

