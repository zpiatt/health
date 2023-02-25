# How to Contribute

<!-- vim-markdown-toc GFM -->

* [Coding Conventions](#coding-conventions)
    * [ShellCheck](#shellcheck)
    * [No no's](#no-nos)
    * [If Statements](#if-statements)
    * [Case Statements](#case-statements)

<!-- vim-markdown-toc -->


## Coding Conventions

- Use `bash` built-ins wherever possible.
- Try not to pipe (`|`) at all.
- Limit usage of external commands `$(cmd)`.
- Indent 4 spaces.
- Use [snake_case](https://en.wikipedia.org/wiki/Snake_case) for function
  and variable names.
- Keep lines below `100` characters long.
- Use `[[ ]]` for tests.
- Quote **EVERYTHING**.

### ShellCheck

For your contribution to be accepted, your changes need to pass
ShellCheck.

```sh
shellcheck health
```


### No no's

- Don’t use GNU conventions in commands.
    - Use POSIX arguments and flags.
- Don’t use `cut`.
    - Use `bash`'s built-in [parameter expansion](http://wiki.bash-hackers.org/syntax/pe).
- Don’t use `echo`.
    - Use `printf "%s\n"`
- Don’t use `bc`.
- Don’t use `sed`.
    - Use `bash`'s built-in [parameter expansion](http://wiki.bash-hackers.org/syntax/pe).
- Don’t use `cat`.
    - Use `bash`'s built-in syntax (`file="$(< /path/to/file.txt)"`).
- Don’t use `grep "pattern" | awk '{ printf }'`.
    - Use `awk '/pattern/ { printf }'`
- Don’t use `wc`.
    - Use `${#var}` or `${#arr[@]}`.


### If Statements

If the test only has one command inside of it; use the compact test
syntax. Otherwise the normal `if`/`fi` is just fine.

```sh
# Bad
if [[ "$var" ]]; then
    printf "%s\n" "$var"
fi

# Good
[[ "$var" ]] && printf "%s\n" "$var"

# Also good (Use this for longer lines).
[[ "$var" ]] && \
    printf "%s\n" "$var"
```


### Case Statements

Case statements need to be formatted in a specific way.

```sh
# Good example (Notice the indentation).
case "$var" in
    1)  printf "%s\n" 1 ;;
    2)
        printf "%s\n" "1"
        printf "%s\n" "2"
    ;;

    *)
        printf "%s\n" "1"
        printf "%s\n" "2"
        printf "%s\n" "3"
    ;;
esac
```
