.class Lcom/google/common/net/MediaType$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$0:Lcom/google/common/net/MediaType;


# direct methods
.method constructor <init>(Lcom/google/common/net/MediaType;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/net/MediaType$2;->this$0:Lcom/google/common/net/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/net/MediaType$2;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/google/common/net/MediaType;->access$000()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/common/net/MediaType;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
