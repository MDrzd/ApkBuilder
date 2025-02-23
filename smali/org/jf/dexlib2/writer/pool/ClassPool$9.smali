.class Lorg/jf/dexlib2/writer/pool/ClassPool$9;
.super Ljava/util/AbstractCollection;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/pool/ClassPool;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/pool/ClassPool;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$9;->this$0:Lorg/jf/dexlib2/writer/pool/ClassPool;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;-><init>(Lorg/jf/dexlib2/writer/pool/ClassPool$9;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$9;->this$0:Lorg/jf/dexlib2/writer/pool/ClassPool;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/pool/ClassPool;->internedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
