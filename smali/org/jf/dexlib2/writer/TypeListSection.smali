.class public interface abstract Lorg/jf/dexlib2/writer/TypeListSection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/writer/NullableOffsetSection;


# virtual methods
.method public abstract getNullableItemOffset(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getTypes(Ljava/lang/Object;)Ljava/util/Collection;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
