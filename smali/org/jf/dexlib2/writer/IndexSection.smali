.class public interface abstract Lorg/jf/dexlib2/writer/IndexSection;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getItemCount()I
.end method

.method public abstract getItemIndex(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract getItems()Ljava/util/Collection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
