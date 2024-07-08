            ↑
-     ← h j k l →
          ↓
- `i` to get into **Insert mode**.
- `<ESC>`, `<CTRL-[>`, `<CTRL-C>` to get back to **Normal mode**.
- `w` to move word by word
- `e` to jump to the end of a word
- `b` to move backwards word by word
- `W` to move word by WORD
- `E` is like `e` but operates on WORDS
- `B` to move backwards WORD by WORD
- `ge` to jup to the end of the previous word
- `gE` is like `ge` but operates on WORDS
- `0`: Moves to the first character of a line
- `^`: Moves to the first non-blank character of a line
- `$`: Moves to the end of a line
- `g_`: Moves to the non-blank character at the end of a line

- `}` jumps entire paragraphs downwards
- `{` similarly but upwards
- `CTRL-d` lets you move down half a page by scrolling the page
- `CTRL-u` lets you move up half a page also by scrolling

- `f{character}` (find) to move to the next occurrence of a character in a line.
- `F{character}` to find the previous occurrence of a character
- `/{pattern}` to search forward
- `?{pattern}` to search backwards
- `n` to go to the next match
- `N` to go to the previous match

> - d for delete
> - f for find
> - c for change
> - t for unTil

> - d{motion} - delete text covered by motion
>   - d2w => deletes two words
>   - dt; => delete until ;
>   - d/hello => delete until hello
> - dd - delete line
> - D - delete from cursor until the end of the line

- Use `gd` to **g**o to **d**efinition of whatever is under your cursor.
- Use `gf` to **g**o to a **f**ile in an import.
- Type `gg` to go to the top of the file.
- Use `{line}gg` to go to a specific line.
- Use `G` to go to the end of the file.
- Type `%` jump to matching `({[]})`.

- `{count}{command}` multiply the effect of a command: `5j`, `2/{}`...
- `/{pattern} .*`  