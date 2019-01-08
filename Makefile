.PHONY: all, clean, fclean, re

CC = clang
CFLAGS = -Wall -Werror -Wextra

NAME1 = Colleen
NAME2 = Grace
NAME3 = Sully

SRC = ./srcs
SRC_PATH1 = $(SRC)/$(NAME1)/
SRC_PATH2 = $(SRC)/$(NAME2)/
SRC_PATH3 = $(SRC)/$(NAME3)/

SRC_FILES1 = $(NAME1).c
SRC_FILES2 = $(NAME2).c
SRC_FILES3 = $(NAME3).c

OBJ = ./obj
OBJ_PATH1 = $(OBJ)/$(NAME1)/
OBJ_PATH2 = $(OBJ)/$(NAME2)/
OBJ_PATH3 = $(OBJ)/$(NAME3)/

OBJ_FILES1 = $(SRC_FILES1:.c=.o)
OBJ_FILES2 = $(SRC_FILES2:.c=.o)
OBJ_FILES3 = $(SRC_FILES3:.c=.o)

OBJ_EXEC1 = $(addprefix $(OBJ_PATH1), $(OBJ_FILES1))
OBJ_EXEC2 = $(addprefix $(OBJ_PATH2), $(OBJ_FILES2))
OBJ_EXEC3 = $(addprefix $(OBJ_PATH3), $(OBJ_FILES3))

all: $(NAME1) $(NAME2) $(NAME3)

$(OBJ_PATH1):
	@mkdir $(OBJ) 2> /dev/null || true
	@mkdir $(OBJ_PATH1) 2> /dev/null || true

$(OBJ_PATH2):
	@mkdir $(OBJ) 2> /dev/null || true
	@mkdir $(OBJ_PATH2) 2> /dev/null || true

$(OBJ_PATH3):
	@mkdir $(OBJ) 2> /dev/null || true
	@mkdir $(OBJ_PATH3) 2> /dev/null || true

$(OBJ_PATH1)%.o: $(SRC_PATH1)%.c
	@$(CC) $(CFLAGS) -c -o $@ $<
	@echo "\033[34mCompilation of \033[36m$(notdir $<)\033[34m done.\033[0m"

$(OBJ_PATH2)%.o: $(SRC_PATH2)%.c
	@$(CC) $(CFLAGS) -c -o $@ $<
	@echo "\033[34mCompilation of \033[36m$(notdir $<)\033[34m done.\033[0m"

$(OBJ_PATH3)%.o: $(SRC_PATH3)%.c
	@$(CC) $(CFLAGS) -c -o $@ $<
	@echo "\033[34mCompilation of \033[36m$(notdir $<)\033[34m done.\033[0m"

$(NAME1): $(OBJ_PATH1) $(OBJ_EXEC1)
	@$(CC) $(CFLAGS) $(OBJ_EXEC1) -o $(NAME1)
	@echo "\033[32mBinary \033[1;32m$(NAME1)\033[1;0m\033[32m created.\033[0m"

$(NAME2): $(OBJ_PATH2) $(OBJ_EXEC2)
	@$(CC) $(CFLAGS) $(OBJ_EXEC2) -o $(NAME2)
	@echo "\033[32mBinary \033[1;32m$(NAME2)\033[1;0m\033[32m created.\033[0m"

$(NAME3): $(OBJ_PATH3) $(OBJ_EXEC3)
	@$(CC) $(CFLAGS) $(OBJ_EXEC3) -o $(NAME3)
	@echo "\033[32mBinary \033[1;32m$(NAME3)\033[1;0m\033[32m created.\033[0m"

clean:
	@rm -rf $(OBJ)
	@echo "\033[31mObjects files \033[1;31m$(OBJ_FILES1)\033[1;0m\033[31m removed.\033[0m"
	@echo "\033[31mObjects files \033[1;31m$(OBJ_FILES2)\033[1;0m\033[31m removed.\033[0m"
	@echo "\033[31mObjects files \033[1;31m$(OBJ_FILES3)\033[1;0m\033[31m removed.\033[0m"


fclean: clean
	@rm -f $(NAME1)
	@echo "\033[31mBinary \033[1;31m$(NAME1)\033[1;0m\033[31m removed.\033[0m"
	@rm -f $(NAME2)
	@echo "\033[31mBinary \033[1;31m$(NAME2)\033[1;0m\033[31m removed.\033[0m"
	@rm -f $(NAME3)
	@echo "\033[31mBinary \033[1;31m$(NAME3)\033[1;0m\033[31m removed.\033[0m"
	@rm -f $(NAME3)_* 

re: fclean all
