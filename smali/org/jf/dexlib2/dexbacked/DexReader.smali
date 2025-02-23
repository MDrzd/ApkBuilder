.class public Lorg/jf/dexlib2/dexbacked/DexReader;
.super Lorg/jf/dexlib2/dexbacked/BaseDexReader;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/BaseDexReader;-><init>(Lorg/jf/dexlib2/dexbacked/BaseDexBuffer;I)V

    return-void
.end method
