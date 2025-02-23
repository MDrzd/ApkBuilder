.class public interface abstract Lorg/jf/dexlib2/writer/StringSection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/writer/NullableIndexSection;


# virtual methods
.method public abstract getItemIndex(Lorg/jf/dexlib2/iface/reference/StringReference;)I
    .param p1    # Lorg/jf/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract hasJumboIndexes()Z
.end method
