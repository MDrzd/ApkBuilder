.class Lcom/beust/jcommander/JCommander$DefaultVariableArity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/beust/jcommander/IVariableArity;


# instance fields
.field final synthetic this$0:Lcom/beust/jcommander/JCommander;


# direct methods
.method private constructor <init>(Lcom/beust/jcommander/JCommander;)V
    .registers 2

    iput-object p1, p0, Lcom/beust/jcommander/JCommander$DefaultVariableArity;->this$0:Lcom/beust/jcommander/JCommander;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beust/jcommander/JCommander;Lcom/beust/jcommander/JCommander$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/beust/jcommander/JCommander$DefaultVariableArity;-><init>(Lcom/beust/jcommander/JCommander;)V

    return-void
.end method


# virtual methods
.method public processVariableArity(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/JCommander$DefaultVariableArity;->this$0:Lcom/beust/jcommander/JCommander;

    aget-object v1, p2, p1

    invoke-static {v0, p2, v1}, Lcom/beust/jcommander/JCommander;->access$100(Lcom/beust/jcommander/JCommander;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method
