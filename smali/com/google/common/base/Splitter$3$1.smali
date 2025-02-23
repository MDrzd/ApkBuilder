.class Lcom/google/common/base/Splitter$3$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/base/Splitter$3;

.field final synthetic val$matcher:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$3;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Ljava/util/regex/Matcher;)V
    .registers 5

    iput-object p1, p0, Lcom/google/common/base/Splitter$3$1;->this$0:Lcom/google/common/base/Splitter$3;

    iput-object p4, p0, Lcom/google/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .registers 2

    iget-object p1, p0, Lcom/google/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    return p1
.end method

.method public separatorStart(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
