.class public abstract Lorg/jf/util/AbstractForwardSequentialList;
.super Ljava/util/AbstractSequentialList;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jf/util/AbstractForwardSequentialList;I)Ljava/util/Iterator;
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/util/AbstractForwardSequentialList;->iterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private iterator(I)Ljava/util/Iterator;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/jf/util/AbstractForwardSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method


# virtual methods
.method public abstract iterator()Ljava/util/Iterator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jf/util/AbstractForwardSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jf/util/AbstractForwardSequentialList;->iterator(I)Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/jf/util/AbstractForwardSequentialList$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/jf/util/AbstractForwardSequentialList$1;-><init>(Lorg/jf/util/AbstractForwardSequentialList;ILjava/util/Iterator;)V

    return-object v1

    :catch_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
