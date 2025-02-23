.class public Lorg/codehaus/plexus/util/cli/shell/CmdShell;
.super Lorg/codehaus/plexus/util/cli/shell/Shell;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;-><init>()V

    const-string v0, "cmd.exe"

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/shell/CmdShell;->setShellCommand(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/shell/CmdShell;->setQuotedExecutableEnabled(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/X"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/C"

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lorg/codehaus/plexus/util/cli/shell/CmdShell;->setShellArgs([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCommandLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, p1, p2}, Lorg/codehaus/plexus/util/cli/shell/Shell;->getCommandLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
