.class public Lorg/jf/dexlib2/DexFileFactory$UnsupportedOatVersionException;
.super Lorg/jf/util/ExceptionWithContext;


# instance fields
.field public final oatFile:Lorg/jf/dexlib2/dexbacked/OatFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile;)V
    .registers 6
    .param p1    # Lorg/jf/dexlib2/dexbacked/OatFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "Unsupported oat version: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/OatFile;->getOatVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/jf/dexlib2/DexFileFactory$UnsupportedOatVersionException;->oatFile:Lorg/jf/dexlib2/dexbacked/OatFile;

    return-void
.end method
