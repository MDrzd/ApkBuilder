.class public Lorg/apache/commons/lang3/tuple/MutableTriple;
.super Lorg/apache/commons/lang3/tuple/Triple;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public left:Ljava/lang/Object;

.field public middle:Ljava/lang/Object;

.field public right:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/MutableTriple;
    .registers 4

    new-instance v0, Lorg/apache/commons/lang3/tuple/MutableTriple;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/tuple/MutableTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getMiddle()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setLeft(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    return-void
.end method

.method public setMiddle(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    return-void
.end method

.method public setRight(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    return-void
.end method
