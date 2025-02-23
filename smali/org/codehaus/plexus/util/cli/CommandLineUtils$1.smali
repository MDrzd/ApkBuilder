.class final Lorg/codehaus/plexus/util/cli/CommandLineUtils$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic val$p:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$1;->val$p:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, "CommandLineUtils process shutdown hook"

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils$1;->setName(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils$1;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$1;->val$p:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-void
.end method
