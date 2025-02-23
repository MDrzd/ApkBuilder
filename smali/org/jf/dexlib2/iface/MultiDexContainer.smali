.class public interface abstract Lorg/jf/dexlib2/iface/MultiDexContainer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getDexEntryNames()Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getEntry(Ljava/lang/String;)Lorg/jf/dexlib2/iface/DexFile;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getOpcodes()Lorg/jf/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
