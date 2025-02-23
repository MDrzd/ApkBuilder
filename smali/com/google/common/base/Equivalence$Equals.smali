.class final Lcom/google/common/base/Equivalence$Equals;
.super Lcom/google/common/base/Equivalence;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final INSTANCE:Lcom/google/common/base/Equivalence$Equals;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/Equivalence$Equals;

    invoke-direct {v0}, Lcom/google/common/base/Equivalence$Equals;-><init>()V

    sput-object v0, Lcom/google/common/base/Equivalence$Equals;->INSTANCE:Lcom/google/common/base/Equivalence$Equals;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/google/common/base/Equivalence$Equals;->INSTANCE:Lcom/google/common/base/Equivalence$Equals;

    return-object v0
.end method


# virtual methods
.method protected final doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final doHash(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
