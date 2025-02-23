.class final Lorg/apache/commons/lang3/ClassUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic val$classes:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$2;->val$classes:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/lang3/ClassUtils$2;->val$classes:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/lang3/ClassUtils$2$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/commons/lang3/ClassUtils$2$1;-><init>(Lorg/apache/commons/lang3/ClassUtils$2;Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v2
.end method
