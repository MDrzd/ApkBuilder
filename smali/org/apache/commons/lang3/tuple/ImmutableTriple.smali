.class public final Lorg/apache/commons/lang3/tuple/ImmutableTriple;
.super Lorg/apache/commons/lang3/tuple/Triple;


# static fields
.field private static final NULL:Lorg/apache/commons/lang3/tuple/ImmutableTriple;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final left:Ljava/lang/Object;

.field public final middle:Ljava/lang/Object;

.field public final right:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutableTriple;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->NULL:Lorg/apache/commons/lang3/tuple/ImmutableTriple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->left:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->middle:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->right:Ljava/lang/Object;

    return-void
.end method

.method public static nullTriple()Lorg/apache/commons/lang3/tuple/ImmutableTriple;
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->NULL:Lorg/apache/commons/lang3/tuple/ImmutableTriple;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutableTriple;
    .registers 4

    new-instance v0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/tuple/ImmutableTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getLeft()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMiddle()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->middle:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRight()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutableTriple;->right:Ljava/lang/Object;

    return-object v0
.end method
