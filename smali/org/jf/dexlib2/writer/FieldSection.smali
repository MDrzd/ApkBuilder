.class public interface abstract Lorg/jf/dexlib2/writer/FieldSection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/writer/IndexSection;


# virtual methods
.method public abstract getDefiningClass(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;
    .param p1    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getFieldIndex(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract getFieldType(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;
    .param p1    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getName(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/Object;
    .param p1    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
