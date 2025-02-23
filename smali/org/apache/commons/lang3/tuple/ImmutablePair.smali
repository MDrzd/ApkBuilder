.class public final Lorg/apache/commons/lang3/tuple/ImmutablePair;
.super Lorg/apache/commons/lang3/tuple/Pair;


# static fields
.field private static final NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public final left:Ljava/lang/Object;

.field public final right:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/apache/commons/lang3/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Pair;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-void
.end method

.method public static nullPair()Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .registers 3

    new-instance v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getLeft()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRight()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
