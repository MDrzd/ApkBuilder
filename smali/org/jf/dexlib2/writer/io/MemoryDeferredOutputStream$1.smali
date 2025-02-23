.class final Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;


# instance fields
.field final synthetic val$bufferSize:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream$1;->val$bufferSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final makeDeferredOutputStream()Lorg/jf/dexlib2/writer/io/DeferredOutputStream;
    .registers 3

    new-instance v0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream$1;->val$bufferSize:I

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;-><init>(I)V

    return-object v0
.end method
