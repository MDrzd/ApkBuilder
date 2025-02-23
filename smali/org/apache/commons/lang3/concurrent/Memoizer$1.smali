.class Lorg/apache/commons/lang3/concurrent/Memoizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/concurrent/Memoizer;

.field final synthetic val$arg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$1;->this$0:Lorg/apache/commons/lang3/concurrent/Memoizer;

    iput-object p2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$1;->val$arg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$1;->this$0:Lorg/apache/commons/lang3/concurrent/Memoizer;

    invoke-static {v0}, Lorg/apache/commons/lang3/concurrent/Memoizer;->access$000(Lorg/apache/commons/lang3/concurrent/Memoizer;)Lorg/apache/commons/lang3/concurrent/Computable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$1;->val$arg:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/lang3/concurrent/Computable;->compute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
