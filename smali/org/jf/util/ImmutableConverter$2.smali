.class Lorg/jf/util/ImmutableConverter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$0:Lorg/jf/util/ImmutableConverter;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/jf/util/ImmutableConverter;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/util/ImmutableConverter$2;->this$0:Lorg/jf/util/ImmutableConverter;

    iput-object p2, p0, Lorg/jf/util/ImmutableConverter$2;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/util/ImmutableConverter$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/jf/util/ImmutableConverter$2;->this$0:Lorg/jf/util/ImmutableConverter;

    iget-object v1, p0, Lorg/jf/util/ImmutableConverter$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jf/util/ImmutableConverter;->makeImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lorg/jf/util/ImmutableConverter$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
