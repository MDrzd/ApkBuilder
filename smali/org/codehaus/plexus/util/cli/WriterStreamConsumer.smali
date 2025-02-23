.class public Lorg/codehaus/plexus/util/cli/WriterStreamConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/cli/StreamConsumer;


# instance fields
.field private writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/WriterStreamConsumer;->writer:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public consumeLine(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/WriterStreamConsumer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/codehaus/plexus/util/cli/WriterStreamConsumer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method
