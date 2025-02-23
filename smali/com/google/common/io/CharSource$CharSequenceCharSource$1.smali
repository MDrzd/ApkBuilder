.class Lcom/google/common/io/CharSource$CharSequenceCharSource$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic this$0:Lcom/google/common/io/CharSource$CharSequenceCharSource;


# direct methods
.method constructor <init>(Lcom/google/common/io/CharSource$CharSequenceCharSource;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->this$0:Lcom/google/common/io/CharSource$CharSequenceCharSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharSource$CharSequenceCharSource$1$1;-><init>(Lcom/google/common/io/CharSource$CharSequenceCharSource$1;)V

    return-object v0
.end method
