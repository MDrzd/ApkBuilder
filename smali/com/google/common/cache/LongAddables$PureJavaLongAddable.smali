.class final Lcom/google/common/cache/LongAddables$PureJavaLongAddable;
.super Ljava/util/concurrent/atomic/AtomicLong;

# interfaces
.implements Lcom/google/common/cache/LongAddable;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/cache/LongAddables$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;->getAndAdd(J)J

    return-void
.end method

.method public final increment()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;->getAndIncrement()J

    return-void
.end method

.method public final sum()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;->get()J

    move-result-wide v0

    return-wide v0
.end method
