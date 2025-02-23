.class public abstract Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY:Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newOrEmpty(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$StaticInitialValueIteratorImpl;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object v0
.end method


# virtual methods
.method public abstract getNextOrNull()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract skipNext()V
.end method
