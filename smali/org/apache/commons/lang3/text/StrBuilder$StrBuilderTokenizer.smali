.class Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;
.super Lorg/apache/commons/lang3/text/StrTokenizer;


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/text/StrBuilder;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .registers 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object p1, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p3}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
