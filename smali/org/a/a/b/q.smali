.class public Lorg/a/a/b/q;
.super Lorg/a/a/a;


# static fields
.field public static final DOWN:I = 0x2

.field public static final UP:I = 0x3

.field static dotdot:Ljava/lang/String; = ".*[^.]\\.\\.[^.].*"

.field static dotdotPattern:Ljava/util/regex/Pattern; = null

.field static doubleEtc:Ljava/lang/String; = ".*\\.\\.\\.\\s+\\.\\.\\..*"

.field static doubleEtcPattern:Ljava/util/regex/Pattern;


# instance fields
.field protected input:Lorg/a/a/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/a/a/b/q;->dotdot:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/a/a/b/q;->dotdotPattern:Ljava/util/regex/Pattern;

    sget-object v0, Lorg/a/a/b/q;->doubleEtc:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/a/a/b/q;->doubleEtcPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/a/a/b/p;)V
    .registers 2

    invoke-direct {p0}, Lorg/a/a/a;-><init>()V

    invoke-virtual {p0, p1}, Lorg/a/a/b/q;->setTreeNodeStream(Lorg/a/a/b/p;)V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/b/p;Lorg/a/a/v;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/a/a/a;-><init>(Lorg/a/a/v;)V

    invoke-virtual {p0, p1}, Lorg/a/a/b/q;->setTreeNodeStream(Lorg/a/a/b/p;)V

    return-void
.end method

.method protected static getAncestor(Lorg/a/a/b/n;[Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p0, p2}, Lorg/a/a/b/n;->d(Ljava/lang/Object;)I

    move-result v0

    aget-object v0, p1, v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p0, p2}, Lorg/a/a/b/n;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static inContext(Lorg/a/a/b/n;[Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 9

    sget-object v0, Lorg/a/a/b/q;->dotdotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sget-object v1, Lorg/a/a/b/q;->doubleEtcPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\\.\\.\\."

    const-string v1, " ... "

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v0, "\\s+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    invoke-interface {p0, p2}, Lorg/a/a/b/n;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x0

    if-ltz v0, :cond_4

    if-eqz p2, :cond_4

    aget-object v3, p3, v0

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    aget-object v3, p3, v3

    invoke-static {p0, p1, p2, v3}, Lorg/a/a/b/q;->getAncestor(Lorg/a/a/b/n;[Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-interface {p0, p2}, Lorg/a/a/b/n;->d(Ljava/lang/Object;)I

    move-result v3

    aget-object v3, p1, v3

    aget-object v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    if-ltz v0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid syntax: ... ..."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid syntax: .."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected getCurrentInputSymbol(Lorg/a/a/j;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lorg/a/a/b/p;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/a/a/b/p;->d(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getErrorHeader(Lorg/a/a/u;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/a/a/b/q;->getGrammarFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": node from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lorg/a/a/u;->approximateLineInfo:Z

    if-eqz v1, :cond_0

    const-string v1, "after "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/a/a/u;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/a/a/u;->charPositionInLine:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getErrorMessage(Lorg/a/a/u;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p1, Lorg/a/a/u;->input:Lorg/a/a/j;

    check-cast v0, Lorg/a/a/b/p;

    invoke-interface {v0}, Lorg/a/a/b/p;->k()Lorg/a/a/b/n;

    move-result-object v0

    iget-object v1, p1, Lorg/a/a/u;->node:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/a/a/b/n;->j(Ljava/lang/Object;)Lorg/a/a/x;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/u;->token:Lorg/a/a/x;

    iget-object v1, p1, Lorg/a/a/u;->token:Lorg/a/a/x;

    if-nez v1, :cond_0

    new-instance v1, Lorg/a/a/e;

    iget-object v2, p1, Lorg/a/a/u;->node:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lorg/a/a/b/n;->d(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Lorg/a/a/u;->node:Ljava/lang/Object;

    invoke-interface {v0, v3}, Lorg/a/a/b/n;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/a/a/e;-><init>(ILjava/lang/String;)V

    iput-object v1, p1, Lorg/a/a/u;->token:Lorg/a/a/x;

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/a/a/a;->getErrorMessage(Lorg/a/a/u;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getMissingSymbol(Lorg/a/a/j;Lorg/a/a/u;ILorg/a/a/b;)Ljava/lang/Object;
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "<missing "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/b/q;->getTokenNames()[Ljava/lang/String;

    move-result-object p4

    aget-object p4, p4, p3

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ">"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lorg/a/a/u;->input:Lorg/a/a/j;

    check-cast p2, Lorg/a/a/b/p;

    invoke-interface {p2}, Lorg/a/a/b/p;->k()Lorg/a/a/b/n;

    move-result-object p2

    new-instance p4, Lorg/a/a/e;

    invoke-direct {p4, p3, p1}, Lorg/a/a/e;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p4}, Lorg/a/a/b/n;->b(Lorg/a/a/x;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    invoke-interface {v0}, Lorg/a/a/b/p;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTreeNodeStream()Lorg/a/a/b/p;
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    return-object v0
.end method

.method public inContext(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    invoke-interface {v0}, Lorg/a/a/b/p;->k()Lorg/a/a/b/n;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/b/q;->getTokenNames()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/a/a/b/p;->d(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lorg/a/a/b/q;->inContext(Lorg/a/a/b/n;[Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public matchAny(Lorg/a/a/j;)V
    .registers 6

    iget-object p1, p0, Lorg/a/a/b/q;->state:Lorg/a/a/v;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/a/a/v;->c:Z

    iget-object p1, p0, Lorg/a/a/b/q;->state:Lorg/a/a/v;

    iput-boolean v0, p1, Lorg/a/a/v;->e:Z

    iget-object p1, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/a/a/b/p;->d(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    invoke-interface {v2}, Lorg/a/a/b/p;->k()Lorg/a/a/b/n;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/a/a/b/n;->f(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    invoke-interface {p1}, Lorg/a/a/b/p;->e()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    invoke-interface {v2}, Lorg/a/a/b/p;->k()Lorg/a/a/b/n;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/a/a/b/n;->d(Ljava/lang/Object;)I

    move-result p1

    :cond_2
    :goto_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    iget-object p1, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    invoke-interface {p1}, Lorg/a/a/b/p;->e()V

    iget-object p1, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    invoke-interface {p1, v1}, Lorg/a/a/b/p;->d(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    invoke-interface {v3}, Lorg/a/a/b/p;->k()Lorg/a/a/b/n;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/a/a/b/n;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected recoverFromMismatchedToken(Lorg/a/a/j;ILorg/a/a/b;)Ljava/lang/Object;
    .registers 4

    new-instance p3, Lorg/a/a/p;

    check-cast p1, Lorg/a/a/b/p;

    invoke-direct {p3, p2, p1}, Lorg/a/a/p;-><init>(ILorg/a/a/b/p;)V

    throw p3
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Lorg/a/a/a;->reset()V

    iget-object v0, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/a/a/b/p;->b(I)V

    :cond_0
    return-void
.end method

.method public setTreeNodeStream(Lorg/a/a/b/p;)V
    .registers 2

    iput-object p1, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    return-void
.end method

.method public traceIn(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/a/b/p;->d(I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/a/a/a;->traceIn(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public traceOut(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/a/a/b/q;->input:Lorg/a/a/b/p;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/a/b/p;->d(I)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/a/a/a;->traceOut(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
