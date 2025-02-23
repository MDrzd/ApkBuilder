.class public interface abstract Lorg/jf/dexlib2/writer/io/DexDataStore;
.super Ljava/lang/Object;


# virtual methods
.method public abstract close()V
.end method

.method public abstract outputAt(I)Ljava/io/OutputStream;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract readAt(I)Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
