TARGET = lab_2
CC = g++

PREF_SRC = ./src/
PREF_OBJ = ./obj/

SRC = $(wildcard $(PREF_SRC)*.cpp)
OBJ = $(patsubst $(PREF_SRC)%.cpp, $(PREF_OBJ)%.o, $(SRC))

$(TARGET): $(OBJ)
[TAB]$(CC) $(OBJ) -o $(TARGET) -lm

$(PREF_OBJ)%.o : $(PREF_SRC)%.cpp
[TAB]$(CC) -c $< -o $@

clean:
[TAB]rm -f $(TARGET) $(PREF_OBJ)*.o
