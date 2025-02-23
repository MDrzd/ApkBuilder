.class Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field iter:Ljava/util/Iterator;

.field final synthetic this$1:Lorg/jf/dexlib2/writer/pool/ClassPool$9;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/pool/ClassPool$9;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;->this$1:Lorg/jf/dexlib2/writer/pool/ClassPool$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;->this$1:Lorg/jf/dexlib2/writer/pool/ClassPool$9;

    iget-object p1, p1, Lorg/jf/dexlib2/writer/pool/ClassPool$9;->this$0:Lorg/jf/dexlib2/writer/pool/ClassPool;

    iget-object p1, p1, Lorg/jf/dexlib2/writer/pool/ClassPool;->internedItems:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 4

    new-instance v0, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;->this$1:Lorg/jf/dexlib2/writer/pool/ClassPool$9;

    iget-object v1, v1, Lorg/jf/dexlib2/writer/pool/ClassPool$9;->this$0:Lorg/jf/dexlib2/writer/pool/ClassPool;

    iget-object v2, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$9$1;->iter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;-><init>(Lorg/jf/dexlib2/writer/pool/ClassPool;Lorg/jf/dexlib2/writer/pool/PoolClassDef;)V

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
