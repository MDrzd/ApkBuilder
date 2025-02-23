.class Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;
.super Lcom/google/common/collect/AbstractIterator;


# instance fields
.field lines:Ljava/util/Iterator;

.field final synthetic this$1:Lcom/google/common/io/CharSource$CharSequenceCharSource$1;


# direct methods
.method constructor <init>(Lcom/google/common/io/CharSource$CharSequenceCharSource$1;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;->this$1:Lcom/google/common/io/CharSource$CharSequenceCharSource$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    invoke-static {}, Lcom/google/common/io/CharSource$CharSequenceCharSource;->access$200()Lcom/google/common/base/Splitter;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;->this$1:Lcom/google/common/io/CharSource$CharSequenceCharSource$1;

    iget-object v0, v0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->this$0:Lcom/google/common/io/CharSource$CharSequenceCharSource;

    invoke-static {v0}, Lcom/google/common/io/CharSource$CharSequenceCharSource;->access$100(Lcom/google/common/io/CharSource$CharSequenceCharSource;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;->lines:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;->lines:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;->lines:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;->lines:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
