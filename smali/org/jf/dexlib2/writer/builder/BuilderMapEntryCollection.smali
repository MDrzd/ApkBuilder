.class public abstract Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;
.super Ljava/util/AbstractCollection;


# instance fields
.field private final keys:Ljava/util/Collection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;->keys:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method protected abstract getValue(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;->keys:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;Ljava/util/Iterator;)V

    return-object v1
.end method

.method protected abstract setValue(Ljava/lang/Object;I)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;->keys:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
