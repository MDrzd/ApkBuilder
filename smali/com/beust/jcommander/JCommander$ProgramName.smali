.class final Lcom/beust/jcommander/JCommander$ProgramName;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/beust/jcommander/FuzzyMap$IKey;


# instance fields
.field private final m_aliases:Ljava/util/List;

.field private final m_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_aliases:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/beust/jcommander/JCommander$ProgramName;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/beust/jcommander/JCommander$ProgramName;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/beust/jcommander/JCommander$ProgramName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDisplayName()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/beust/jcommander/JCommander$ProgramName;

    iget-object v2, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object p1, p1, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    :cond_3
    iget-object v2, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    iget-object p1, p1, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/JCommander$ProgramName;->m_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/beust/jcommander/JCommander$ProgramName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
