.class Lcom/google/common/base/Splitter$1$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/base/Splitter$1;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$1;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/base/Splitter$1$1;->this$0:Lcom/google/common/base/Splitter$1;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method separatorEnd(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method separatorStart(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/common/base/Splitter$1$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object v0, v0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Lcom/google/common/base/CharMatcher;

    iget-object v1, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
