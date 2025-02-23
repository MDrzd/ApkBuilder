.class public Lorg/codehaus/plexus/util/cli/Commandline$Marker;
.super Ljava/lang/Object;


# instance fields
.field private position:I

.field private realPos:I

.field final synthetic this$0:Lorg/codehaus/plexus/util/cli/Commandline;


# direct methods
.method constructor <init>(Lorg/codehaus/plexus/util/cli/Commandline;I)V
    .registers 3

    iput-object p1, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->this$0:Lorg/codehaus/plexus/util/cli/Commandline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->realPos:I

    iput p2, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->position:I

    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 4

    iget v0, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->realPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->this$0:Lorg/codehaus/plexus/util/cli/Commandline;

    invoke-virtual {v0}, Lorg/codehaus/plexus/util/cli/Commandline;->getLiteralExecutable()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->realPos:I

    :goto_1
    iget v0, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->position:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->this$0:Lorg/codehaus/plexus/util/cli/Commandline;

    iget-object v0, v0, Lorg/codehaus/plexus/util/cli/Commandline;->arguments:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/plexus/util/cli/Arg;

    iget v2, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->realPos:I

    invoke-interface {v0}, Lorg/codehaus/plexus/util/cli/Arg;->getParts()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->realPos:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/codehaus/plexus/util/cli/Commandline$Marker;->realPos:I

    return v0
.end method
