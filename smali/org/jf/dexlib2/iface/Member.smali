.class public interface abstract Lorg/jf/dexlib2/iface/Member;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/Annotatable;


# virtual methods
.method public abstract getAccessFlags()I
.end method

.method public abstract getDefiningClass()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
