.class public interface abstract Lorg/jf/dexlib2/iface/MethodImplementation;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getDebugItems()Ljava/lang/Iterable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getInstructions()Ljava/lang/Iterable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getRegisterCount()I
.end method

.method public abstract getTryBlocks()Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
