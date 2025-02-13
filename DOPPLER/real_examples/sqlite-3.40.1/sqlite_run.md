## Compile Commands
```shell
$ clang-13 -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names ./shell_simp.c -I../../thirdparty/klee/include/ -o sqlite3-simp-shell.ll

# If you got errors from the command above, try the followings to fix the issues

# fix perl errors
$ apt-get update
$ apt-get install libtool libtool-bin
# add a command in the last line of configure.ac
LT_INIT 
$ aclocal
$ autoconf
$ CC=clang-13 ./configure
# can directly generate .ll file
$ clang-13 -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names ./sqlite3.c -I../../thirdparty/klee/include/ -o sqlite3.ll

$ clang-13 -S -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone -fno-discard-value-names ./shell_simp.c -I../../thirdparty/klee/include/ -o sqlite3-simp-shell.ll
```
## Command

```shell
./doppler --file ../real_examples/sqlite-3.40.1/sqlite3-simp-shell.ll --entry output_reset --src ../real_examples/sqlite-3.40.1/ --vars ../real_examples/sqlite-3.40.1/sqlite3.json --use_src true --compiler ./doppler-run/compiler.doppler

```

## Vulnerability
Vulnerable variables in shell.c: `p->doXdgOpen` and `p->zTempFile`.

main --> process_sqliterc --> process_input --> do_meta_command --> newTempFile --> clearTempFile

or

main --> do_meta_command --> newTempFile --> clearTempFile

or

main --> do_meta_command --> output_reset

## Grammar and Tracemap

Variable var    
        %98, call8, %30, %23, %25, call4, %16, %17, %82, call10, %88, %72, %91, %19, %64, %46, %29, %45, call, %14, call15, %57, %38, %47, %18, %54, %31, %44, %11, %22, %55, %26, %15, %36, %41, %100, %37, call.i, %66, %101, %73, %99, %39, %80, %89, %63, %42, %61, %12, %32, %48, call7, call13, %86, %35, %34, call9, %13, %79, %43, %24, zTempFile, %33, 
Valid Statement VS ::= 
| vs0: const char *zXdgOpenCmd ="xdg-open"; 
| vs1: p->out = stdout; 
| vs2: p->outfile[0] = 0; 
| vs3: char *dest = destaddr; 
| vs4: doXdgOpen=0; 
| vs5: p->doXdgOpen = 0; 
| vs6: ShellState *p = (ShellState *)calloc(1, sizeof(ShellState)); 
| vs7: strcat(zCmd, zXdgOpenCmd); 
| vs8: utf8_printf(stderr, "Failed: [%s]\n", zCmd); 
| vs9: *dest++ = *src++; 
| vs10: p->shellFlgs = p->priorShFlgs; 
| vs11: p->mode = p->modePrior; 
| vs12: strcat(zCmd, " "); 
| vs13: doXdgOpen = 0; 
| vs14: int exe = system(zCmd); 
| vs15: strcat(zCmd, zTempFile); 
| vs16: char const *src = srcaddr; 
| vs17: char* zTempFile = p->zTempFile; 
| vs18: char outfile = p->outfile[0]; 

tracemap
vs6vs18vs17vs0vs7vs12vs15vs14,doXdgOpen:0xff ;
vs6vs18vs17vs2vs1,doXdgOpen:0x00 ;