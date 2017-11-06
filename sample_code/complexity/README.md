# Reproduction Instructions

Don't take my word for it, you can make these yourself!

### Generate human-readable bytecode

```
javac Foo2.java
javap -c Foo2.class > Foo2.bytecode
```

### Generate human-readable assembly

_Note: you may need to download or build the file hsdis-amd64.dylib for your Java version._

```
javac Foo2.java
java -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly Foo2 > Foo2.asm
```