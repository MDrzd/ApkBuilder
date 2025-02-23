.class public Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;
.super Lorg/jf/util/IndentingWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/util/IndentingWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method protected writeIndent()V
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;->writer:Ljava/io/Writer;

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/jf/util/IndentingWriter;->writeIndent()V

    return-void
.end method
