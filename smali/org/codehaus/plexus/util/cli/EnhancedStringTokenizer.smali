.class public final Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;
.super Ljava/lang/Object;


# instance fields
.field cdelim:Ljava/lang/String;

.field final cdelimChar:C

.field final cdelimSingleChar:Z

.field creturnDelims:Z

.field private cst:Ljava/util/StringTokenizer;

.field delimLast:Z

.field lastToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, " \t\n\r\u000c"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cst:Ljava/util/StringTokenizer;

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->lastToken:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->delimLast:Z

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cst:Ljava/util/StringTokenizer;

    iput-object p2, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cdelim:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->creturnDelims:Z

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cdelimSingleChar:Z

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cdelimChar:C

    return-void
.end method

.method private internalNextToken()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->lastToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->lastToken:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->lastToken:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cst:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->isDelim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->delimLast:Z

    if-eqz v1, :cond_1

    iput-object v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->lastToken:Ljava/lang/String;

    const-string v0, ""

    return-object v0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->delimLast:Z

    return-object v0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->delimLast:Z

    return-object v0
.end method

.method private isDelim(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-boolean v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cdelimSingleChar:Z

    if-eqz v0, :cond_0

    iget-char v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cdelimChar:C

    if-ne v0, p1, :cond_1

    return v2

    :cond_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cdelim:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_1

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public final hasMoreTokens()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->cst:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public final nextToken()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->internalNextToken()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->creturnDelims:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->isDelim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/codehaus/plexus/util/cli/EnhancedStringTokenizer;->internalNextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method
