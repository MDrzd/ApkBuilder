.class final Lcom/google/common/io/ByteSink$AsCharSink;
.super Lcom/google/common/io/CharSink;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field final synthetic this$0:Lcom/google/common/io/ByteSink;


# direct methods
.method private constructor <init>(Lcom/google/common/io/ByteSink;Ljava/nio/charset/Charset;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/io/ByteSink$AsCharSink;->this$0:Lcom/google/common/io/ByteSink;

    invoke-direct {p0}, Lcom/google/common/io/CharSink;-><init>()V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/common/io/ByteSink$AsCharSink;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/io/ByteSink;Ljava/nio/charset/Charset;Lcom/google/common/io/ByteSink$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/ByteSink$AsCharSink;-><init>(Lcom/google/common/io/ByteSink;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public final openStream()Ljava/io/Writer;
    .registers 4

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/google/common/io/ByteSink$AsCharSink;->this$0:Lcom/google/common/io/ByteSink;

    invoke-virtual {v1}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/ByteSink$AsCharSink;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/common/io/ByteSink$AsCharSink;->this$0:Lcom/google/common/io/ByteSink;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ByteSink$AsCharSink;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".asCharSink("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
