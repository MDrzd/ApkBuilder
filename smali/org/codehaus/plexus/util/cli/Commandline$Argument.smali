.class public Lorg/codehaus/plexus/util/cli/Commandline$Argument;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/cli/Arg;


# instance fields
.field private parts:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParts()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline$Argument;->parts:[Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline$Argument;->parts:[Ljava/lang/String;

    return-void
.end method

.method public setLine(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline$Argument;->parts:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Error translating Commandline."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline$Argument;->parts:[Ljava/lang/String;

    :cond_0
    return-void
.end method
