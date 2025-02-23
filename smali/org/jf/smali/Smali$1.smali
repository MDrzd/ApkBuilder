.class final Lorg/jf/smali/Smali$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic val$dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$options:Lorg/jf/smali/SmaliOptions;


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)V
    .registers 4

    iput-object p1, p0, Lorg/jf/smali/Smali$1;->val$file:Ljava/io/File;

    iput-object p2, p0, Lorg/jf/smali/Smali$1;->val$dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iput-object p3, p0, Lorg/jf/smali/Smali$1;->val$options:Lorg/jf/smali/SmaliOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lorg/jf/smali/Smali$1;->val$file:Ljava/io/File;

    iget-object v1, p0, Lorg/jf/smali/Smali$1;->val$dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iget-object v2, p0, Lorg/jf/smali/Smali$1;->val$options:Lorg/jf/smali/SmaliOptions;

    invoke-static {v0, v1, v2}, Lorg/jf/smali/Smali;->access$000(Ljava/io/File;Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/smali/SmaliOptions;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/smali/Smali$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
