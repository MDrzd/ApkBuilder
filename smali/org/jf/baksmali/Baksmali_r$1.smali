.class final Lorg/jf/baksmali/Baksmali_r$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic val$classDef:Lorg/jf/dexlib2/iface/ClassDef;

.field final synthetic val$fileNameHandler:Lorg/jf/util/ClassFileNameHandler;

.field final synthetic val$options:Lorg/jf/baksmali/BaksmaliOptions;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/iface/ClassDef;Lorg/jf/util/ClassFileNameHandler;Lorg/jf/baksmali/BaksmaliOptions;)V
    .registers 4

    iput-object p1, p0, Lorg/jf/baksmali/Baksmali_r$1;->val$classDef:Lorg/jf/dexlib2/iface/ClassDef;

    iput-object p2, p0, Lorg/jf/baksmali/Baksmali_r$1;->val$fileNameHandler:Lorg/jf/util/ClassFileNameHandler;

    iput-object p3, p0, Lorg/jf/baksmali/Baksmali_r$1;->val$options:Lorg/jf/baksmali/BaksmaliOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Baksmali_r$1;->val$classDef:Lorg/jf/dexlib2/iface/ClassDef;

    iget-object v1, p0, Lorg/jf/baksmali/Baksmali_r$1;->val$fileNameHandler:Lorg/jf/util/ClassFileNameHandler;

    iget-object v2, p0, Lorg/jf/baksmali/Baksmali_r$1;->val$options:Lorg/jf/baksmali/BaksmaliOptions;

    invoke-static {v0, v1, v2}, Lorg/jf/baksmali/Baksmali_r;->access$000(Lorg/jf/dexlib2/iface/ClassDef;Lorg/jf/util/ClassFileNameHandler;Lorg/jf/baksmali/BaksmaliOptions;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/baksmali/Baksmali_r$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
