.class public abstract Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;
.super Ljava/util/AbstractList;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeList;->readItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public abstract readItem(I)Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
