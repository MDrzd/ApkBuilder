.class public abstract Lorg/jf/dexlib2/dexbacked/util/DebugInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newOrEmpty(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;ILorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;)Lorg/jf/dexlib2/dexbacked/util/DebugInfo;
    .registers 4
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;->INSTANCE:Lorg/jf/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$DebugInfoImpl;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;ILorg/jf/dexlib2/dexbacked/DexBackedMethodImplementation;)V

    return-object v0
.end method


# virtual methods
.method public abstract getParameterNames(Lorg/jf/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
