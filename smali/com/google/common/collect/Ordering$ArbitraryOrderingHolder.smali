.class Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;
.super Ljava/lang/Object;


# static fields
.field static final ARBITRARY_ORDERING:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;

    invoke-direct {v0}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;-><init>()V

    sput-object v0, Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;->ARBITRARY_ORDERING:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
