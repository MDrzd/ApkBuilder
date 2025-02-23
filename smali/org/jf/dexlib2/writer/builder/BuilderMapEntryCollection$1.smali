.class Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 4

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;)V

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->access$102(Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
