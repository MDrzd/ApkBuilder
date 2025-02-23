.class final Lorg/apache/commons/lang3/ClassUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableObject;

    iget-object v1, p0, Lorg/apache/commons/lang3/ClassUtils$1;->val$type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/mutable/MutableObject;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/commons/lang3/ClassUtils$1$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/lang3/ClassUtils$1$1;-><init>(Lorg/apache/commons/lang3/ClassUtils$1;Lorg/apache/commons/lang3/mutable/MutableObject;)V

    return-object v1
.end method
