.class Lcom/google/common/io/LineReader$1;
.super Lcom/google/common/io/LineBuffer;


# instance fields
.field final synthetic this$0:Lcom/google/common/io/LineReader;


# direct methods
.method constructor <init>(Lcom/google/common/io/LineReader;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/LineReader$1;->this$0:Lcom/google/common/io/LineReader;

    invoke-direct {p0}, Lcom/google/common/io/LineBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p2, p0, Lcom/google/common/io/LineReader$1;->this$0:Lcom/google/common/io/LineReader;

    invoke-static {p2}, Lcom/google/common/io/LineReader;->access$000(Lcom/google/common/io/LineReader;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
