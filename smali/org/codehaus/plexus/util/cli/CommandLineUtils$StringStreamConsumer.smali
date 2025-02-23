.class public Lorg/codehaus/plexus/util/cli/CommandLineUtils$StringStreamConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/cli/StreamConsumer;


# instance fields
.field private ls:Ljava/lang/String;

.field private string:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$StringStreamConsumer;->string:Ljava/lang/StringBuffer;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$StringStreamConsumer;->ls:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consumeLine(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$StringStreamConsumer;->string:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$StringStreamConsumer;->ls:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getOutput()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$StringStreamConsumer;->string:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
