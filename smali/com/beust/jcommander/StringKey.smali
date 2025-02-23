.class public Lcom/beust/jcommander/StringKey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/beust/jcommander/FuzzyMap$IKey;


# instance fields
.field private m_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beust/jcommander/StringKey;->m_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/beust/jcommander/StringKey;

    iget-object v2, p0, Lcom/beust/jcommander/StringKey;->m_name:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object p1, p1, Lcom/beust/jcommander/StringKey;->m_name:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    :cond_3
    iget-object v2, p0, Lcom/beust/jcommander/StringKey;->m_name:Ljava/lang/String;

    iget-object p1, p1, Lcom/beust/jcommander/StringKey;->m_name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/StringKey;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/StringKey;->m_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/StringKey;->m_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/StringKey;->m_name:Ljava/lang/String;

    return-object v0
.end method
