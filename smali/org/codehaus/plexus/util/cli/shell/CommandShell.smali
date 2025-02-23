.class public Lorg/codehaus/plexus/util/cli/shell/CommandShell;
.super Lorg/codehaus/plexus/util/cli/shell/Shell;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/shell/Shell;-><init>()V

    const-string v0, "command.com"

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/shell/CommandShell;->setShellCommand(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/C"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/codehaus/plexus/util/cli/shell/CommandShell;->setShellArgs([Ljava/lang/String;)V

    return-void
.end method
