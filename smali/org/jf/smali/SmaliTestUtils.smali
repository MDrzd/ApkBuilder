.class public Lorg/jf/smali/SmaliTestUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileSmali(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;
    .registers 2

    const/16 v0, 0xf

    invoke-static {p0, v0}, Lorg/jf/smali/SmaliTestUtils;->compileSmali(Ljava/lang/String;I)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object p0

    return-object p0
.end method

.method public static compileSmali(Ljava/lang/String;I)Lorg/jf/dexlib2/iface/ClassDef;
    .registers 7

    new-instance v0, Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-static {p1}, Lorg/jf/dexlib2/Opcodes;->forApi(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;-><init>(Lorg/jf/dexlib2/Opcodes;)V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/jf/smali/smaliFlexLexer;

    invoke-direct {p0, v1}, Lorg/jf/smali/smaliFlexLexer;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lorg/a/a/f;

    move-object v2, p0

    check-cast v2, Lorg/a/a/y;

    invoke-direct {v1, v2}, Lorg/a/a/f;-><init>(Lorg/a/a/y;)V

    new-instance v2, Lorg/jf/smali/smaliParser;

    invoke-direct {v2, v1}, Lorg/jf/smali/smaliParser;-><init>(Lorg/a/a/z;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/jf/smali/smaliParser;->setVerboseErrors(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/jf/smali/smaliParser;->setAllowOdex(Z)V

    invoke-virtual {v2, p1}, Lorg/jf/smali/smaliParser;->setApiLevel(I)V

    invoke-virtual {v2}, Lorg/jf/smali/smaliParser;->smali_file()Lorg/jf/smali/smaliParser$smali_file_return;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jf/smali/smaliParser;->getNumberOfSyntaxErrors()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-interface {p0}, Lorg/jf/smali/LexerErrorInterface;->getNumberOfSyntaxErrors()I

    move-result p0

    if-gtz p0, :cond_1

    invoke-virtual {v4}, Lorg/jf/smali/smaliParser$smali_file_return;->getTree()Lorg/a/a/b/d;

    move-result-object p0

    new-instance v2, Lorg/a/a/b/f;

    invoke-direct {v2, p0}, Lorg/a/a/b/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lorg/a/a/b/f;->a(Lorg/a/a/z;)V

    new-instance p0, Lorg/jf/smali/smaliTreeWalker;

    invoke-direct {p0, v2}, Lorg/jf/smali/smaliTreeWalker;-><init>(Lorg/a/a/b/p;)V

    invoke-virtual {p0, p1}, Lorg/jf/smali/smaliTreeWalker;->setApiLevel(I)V

    invoke-virtual {p0, v3}, Lorg/jf/smali/smaliTreeWalker;->setVerboseErrors(Z)V

    invoke-virtual {p0, v0}, Lorg/jf/smali/smaliTreeWalker;->setDexBuilder(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    invoke-virtual {p0}, Lorg/jf/smali/smaliTreeWalker;->smali_file()Lorg/jf/dexlib2/iface/ClassDef;

    invoke-virtual {p0}, Lorg/jf/smali/smaliTreeWalker;->getNumberOfSyntaxErrors()I

    move-result p0

    if-gtz p0, :cond_0

    new-instance p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->writeTo(Lorg/jf/dexlib2/writer/io/DexDataStore;)V

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    invoke-static {p1}, Lorg/jf/dexlib2/Opcodes;->forApi(I)Lorg/jf/dexlib2/Opcodes;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->getData()[B

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[B)V

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;->getClasses()Ljava/util/Set;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jf/dexlib2/iface/ClassDef;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error occured while compiling text"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error occured while compiling text"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
