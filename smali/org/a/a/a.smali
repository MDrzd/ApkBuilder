.class public abstract Lorg/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_TOKEN_CHANNEL:I = 0x0

.field public static final HIDDEN:I = 0x63

.field public static final INITIAL_FOLLOW_STACK_SIZE:I = 0x64

.field public static final MEMO_RULE_FAILED:I = -0x2

.field public static final MEMO_RULE_UNKNOWN:I = -0x1

.field public static final NEXT_TOKEN_RULE_NAME:Ljava/lang/String; = "nextToken"


# instance fields
.field protected state:Lorg/a/a/v;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/a/a/v;

    invoke-direct {v0}, Lorg/a/a/v;-><init>()V

    iput-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    return-void
.end method

.method public constructor <init>(Lorg/a/a/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lorg/a/a/v;

    invoke-direct {p1}, Lorg/a/a/v;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    return-void
.end method

.method public static getRuleInvocationStack(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.antlr.runtime."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nextToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public alreadyParsedRule(Lorg/a/a/j;I)Z
    .registers 5

    invoke-interface {p1}, Lorg/a/a/j;->a()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/a/a/a;->getRuleMemoization(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput-boolean v1, p1, Lorg/a/a/v;->e:Z

    goto :goto_0

    :cond_1
    add-int/2addr p2, v1

    invoke-interface {p1, p2}, Lorg/a/a/j;->b(I)V

    :goto_0
    return v1
.end method

.method public beginResync()V
    .registers 1

    return-void
.end method

.method protected combineFollows(Z)Lorg/a/a/b;
    .registers 6

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->b:I

    new-instance v1, Lorg/a/a/b;

    invoke-direct {v1}, Lorg/a/a/b;-><init>()V

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget-object v2, v2, Lorg/a/a/v;->a:[Lorg/a/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/a/a/b;->a(Lorg/a/a/b;)V

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/a/a/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_0

    invoke-virtual {v1, v3}, Lorg/a/a/b;->b(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected computeContextSensitiveRuleFOLLOW()Lorg/a/a/b;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/a/a/a;->combineFollows(Z)Lorg/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected computeErrorRecoverySet()Lorg/a/a/b;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/a/a/a;->combineFollows(Z)Lorg/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public consumeUntil(Lorg/a/a/j;I)V
    .registers 6

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lorg/a/a/j;->e(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eq v1, p2, :cond_0

    invoke-interface {p1}, Lorg/a/a/j;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public consumeUntil(Lorg/a/a/j;Lorg/a/a/b;)V
    .registers 6

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lorg/a/a/j;->e(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2, v1}, Lorg/a/a/b;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/a/a/j;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public displayRecognitionError([Ljava/lang/String;Lorg/a/a/u;)V
    .registers 4

    invoke-virtual {p0, p2}, Lorg/a/a/a;->getErrorHeader(Lorg/a/a/u;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lorg/a/a/a;->getErrorMessage(Lorg/a/a/u;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/a/a;->emitErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public emitErrorMessage(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public endResync()V
    .registers 1

    return-void
.end method

.method public failed()Z
    .registers 2

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget-boolean v0, v0, Lorg/a/a/v;->e:Z

    return v0
.end method

.method public getBacktrackingLevel()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->g:I

    return v0
.end method

.method protected getCurrentInputSymbol(Lorg/a/a/j;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getErrorHeader(Lorg/a/a/u;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/a/a/a;->getSourceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/a/a/a;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v1, p1, Lorg/a/a/u;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/a/a/u;->charPositionInLine:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "line "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getErrorMessage(Lorg/a/a/u;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Lorg/a/a/u;->getMessage()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lorg/a/a/aa;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    check-cast p1, Lorg/a/a/aa;

    iget v0, p1, Lorg/a/a/aa;->a:I

    if-ne v0, v2, :cond_0

    const-string p2, "EOF"

    goto :goto_0

    :cond_0
    iget v0, p1, Lorg/a/a/aa;->a:I

    aget-object p2, p2, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extraneous input "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/a/a/aa;->token:Lorg/a/a/x;

    :goto_1
    invoke-virtual {p0, p1}, Lorg/a/a/a;->getTokenErrorDisplay(Lorg/a/a/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p1, " expecting "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_1
    instance-of v1, p1, Lorg/a/a/q;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/a/a/q;

    iget v1, v0, Lorg/a/a/q;->a:I

    if-ne v1, v2, :cond_2

    const-string p2, "EOF"

    goto :goto_4

    :cond_2
    iget v0, v0, Lorg/a/a/q;->a:I

    aget-object p2, p2, v0

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "missing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/a/a/u;->token:Lorg/a/a/x;

    invoke-virtual {p0, p1}, Lorg/a/a/a;->getTokenErrorDisplay(Lorg/a/a/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    instance-of v1, p1, Lorg/a/a/o;

    if-eqz v1, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/a/a/o;

    iget v1, v0, Lorg/a/a/o;->a:I

    if-ne v1, v2, :cond_4

    const-string p2, "EOF"

    goto :goto_5

    :cond_4
    iget v0, v0, Lorg/a/a/o;->a:I

    aget-object p2, p2, v0

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mismatched input "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/a/a/u;->token:Lorg/a/a/x;

    goto :goto_1

    :cond_5
    instance-of v1, p1, Lorg/a/a/p;

    if-eqz v1, :cond_7

    check-cast p1, Lorg/a/a/p;

    iget v0, p1, Lorg/a/a/p;->a:I

    if-ne v0, v2, :cond_6

    const-string p2, "EOF"

    goto :goto_6

    :cond_6
    iget v0, p1, Lorg/a/a/p;->a:I

    aget-object p2, p2, v0

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mismatched tree node: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/a/a/p;->node:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    instance-of p2, p1, Lorg/a/a/r;

    if-eqz p2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "no viable alternative at input "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_7
    iget-object p1, p1, Lorg/a/a/u;->token:Lorg/a/a/x;

    invoke-virtual {p0, p1}, Lorg/a/a/a;->getTokenErrorDisplay(Lorg/a/a/x;)Ljava/lang/String;

    move-result-object p1

    :goto_8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_8
    instance-of p2, p1, Lorg/a/a/h;

    if-eqz p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "required (...)+ loop did not match anything at input "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    instance-of p2, p1, Lorg/a/a/n;

    if-eqz p2, :cond_a

    move-object p2, p1

    check-cast p2, Lorg/a/a/n;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mismatched input "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/a/a/u;->token:Lorg/a/a/x;

    invoke-virtual {p0, p1}, Lorg/a/a/a;->getTokenErrorDisplay(Lorg/a/a/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expecting set "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lorg/a/a/n;->a:Lorg/a/a/b;

    :goto_9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_a
    instance-of p2, p1, Lorg/a/a/l;

    if-eqz p2, :cond_b

    move-object p2, p1

    check-cast p2, Lorg/a/a/l;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mismatched input "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/a/a/u;->token:Lorg/a/a/x;

    invoke-virtual {p0, p1}, Lorg/a/a/a;->getTokenErrorDisplay(Lorg/a/a/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expecting set "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lorg/a/a/l;->a:Lorg/a/a/b;

    goto :goto_9

    :cond_b
    instance-of p2, p1, Lorg/a/a/i;

    if-eqz p2, :cond_c

    check-cast p1, Lorg/a/a/i;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "rule "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed predicate: {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}?"

    goto :goto_8

    :cond_c
    :goto_a
    return-object v0
.end method

.method public getGrammarFileName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMissingSymbol(Lorg/a/a/j;Lorg/a/a/u;ILorg/a/a/b;)Ljava/lang/Object;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNumberOfSyntaxErrors()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->f:I

    return v0
.end method

.method public getRuleInvocationStack()Ljava/util/List;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0}, Lorg/a/a/a;->getRuleInvocationStack(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRuleMemoization(II)I
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    aput-object v0, v1, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRuleMemoizationCacheSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSourceName()Ljava/lang/String;
.end method

.method public getTokenErrorDisplay(Lorg/a/a/x;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Lorg/a/a/x;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/a/a/x;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "<EOF>"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/a/a/x;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string p1, "\n"

    const-string v1, "\\\\n"

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    const-string v1, "\\\\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t"

    const-string v1, "\\\\t"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTokenNames()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public match(Lorg/a/a/j;ILorg/a/a/b;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0, p1}, Lorg/a/a/a;->getCurrentInputSymbol(Lorg/a/a/j;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/a/a/j;->e(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-interface {p1}, Lorg/a/a/j;->e()V

    iget-object p1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/a/a/v;->c:Z

    iget-object p1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput-boolean p2, p1, Lorg/a/a/v;->e:Z

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget v2, v2, Lorg/a/a/v;->g:I

    if-lez v2, :cond_1

    iget-object p1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput-boolean v1, p1, Lorg/a/a/v;->e:Z

    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/a/a/a;->recoverFromMismatchedToken(Lorg/a/a/j;ILorg/a/a/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public matchAny(Lorg/a/a/j;)V
    .registers 4

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/a/a/v;->c:Z

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput-boolean v1, v0, Lorg/a/a/v;->e:Z

    invoke-interface {p1}, Lorg/a/a/j;->e()V

    return-void
.end method

.method public memoize(Lorg/a/a/j;II)V
    .registers 6

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "!!!!!!!!! memo array is null for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/a;->getGrammarFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    array-length p3, p1

    if-lt p2, p3, :cond_0

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!!!!!!!!! memo size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but rule index is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public mismatchIsMissingToken(Lorg/a/a/j;Lorg/a/a/b;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/a/a/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/a/a/a;->computeContextSensitiveRuleFOLLOW()Lorg/a/a/b;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/a/a/b;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/a/a/b;

    invoke-virtual {p2, v2}, Lorg/a/a/b;->a(Lorg/a/a/b;)V

    :goto_0
    iget-object v2, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget v2, v2, Lorg/a/a/v;->b:I

    if-ltz v2, :cond_2

    invoke-virtual {p2, v1}, Lorg/a/a/b;->b(I)V

    :cond_2
    invoke-interface {p1, v1}, Lorg/a/a/j;->e(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/a/a/b;->a(I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, v1}, Lorg/a/a/b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public mismatchIsUnwantedToken(Lorg/a/a/j;I)Z
    .registers 4

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/a/a/j;->e(I)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected pushFollow(Lorg/a/a/b;)V
    .registers 6

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget-object v1, v1, Lorg/a/a/v;->a:[Lorg/a/a/b;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget-object v0, v0, Lorg/a/a/v;->a:[Lorg/a/a/b;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/a/a/b;

    iget-object v1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget-object v1, v1, Lorg/a/a/v;->a:[Lorg/a/a/b;

    iget-object v2, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget-object v2, v2, Lorg/a/a/v;->a:[Lorg/a/a/b;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput-object v0, v1, Lorg/a/a/v;->a:[Lorg/a/a/b;

    :cond_0
    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget-object v0, v0, Lorg/a/a/v;->a:[Lorg/a/a/b;

    iget-object v1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget v2, v1, Lorg/a/a/v;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/a/a/v;->b:I

    aput-object p1, v0, v2

    return-void
.end method

.method public recover(Lorg/a/a/j;Lorg/a/a/u;)V
    .registers 4

    iget-object p2, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget p2, p2, Lorg/a/a/v;->d:I

    invoke-interface {p1}, Lorg/a/a/j;->a()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lorg/a/a/j;->e()V

    :cond_0
    iget-object p2, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    invoke-interface {p1}, Lorg/a/a/j;->a()I

    move-result v0

    iput v0, p2, Lorg/a/a/v;->d:I

    invoke-virtual {p0}, Lorg/a/a/a;->computeErrorRecoverySet()Lorg/a/a/b;

    move-result-object p2

    invoke-virtual {p0}, Lorg/a/a/a;->beginResync()V

    invoke-virtual {p0, p1, p2}, Lorg/a/a/a;->consumeUntil(Lorg/a/a/j;Lorg/a/a/b;)V

    invoke-virtual {p0}, Lorg/a/a/a;->endResync()V

    return-void
.end method

.method public recoverFromMismatchedSet(Lorg/a/a/j;Lorg/a/a/u;Lorg/a/a/b;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p3}, Lorg/a/a/a;->mismatchIsMissingToken(Lorg/a/a/j;Lorg/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/a/a/a;->reportError(Lorg/a/a/u;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/a/a/a;->getMissingSymbol(Lorg/a/a/j;Lorg/a/a/u;ILorg/a/a/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    throw p2
.end method

.method protected recoverFromMismatchedToken(Lorg/a/a/j;ILorg/a/a/b;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lorg/a/a/a;->mismatchIsUnwantedToken(Lorg/a/a/j;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p3, Lorg/a/a/aa;

    invoke-direct {p3, p2, p1}, Lorg/a/a/aa;-><init>(ILorg/a/a/j;)V

    invoke-virtual {p0}, Lorg/a/a/a;->beginResync()V

    invoke-interface {p1}, Lorg/a/a/j;->e()V

    invoke-virtual {p0}, Lorg/a/a/a;->endResync()V

    invoke-virtual {p0, p3}, Lorg/a/a/a;->reportError(Lorg/a/a/u;)V

    invoke-virtual {p0, p1}, Lorg/a/a/a;->getCurrentInputSymbol(Lorg/a/a/j;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Lorg/a/a/j;->e()V

    return-object p2

    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/a/a/a;->mismatchIsMissingToken(Lorg/a/a/j;Lorg/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/a/a/a;->getMissingSymbol(Lorg/a/a/j;Lorg/a/a/u;ILorg/a/a/b;)Ljava/lang/Object;

    move-result-object p3

    new-instance v0, Lorg/a/a/q;

    invoke-direct {v0, p2, p1, p3}, Lorg/a/a/q;-><init>(ILorg/a/a/j;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/a/a/a;->reportError(Lorg/a/a/u;)V

    return-object p3

    :cond_1
    new-instance p3, Lorg/a/a/o;

    invoke-direct {p3, p2, p1}, Lorg/a/a/o;-><init>(ILorg/a/a/j;)V

    throw p3
.end method

.method public reportError(Lorg/a/a/u;)V
    .registers 5

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget-boolean v0, v0, Lorg/a/a/v;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget v1, v0, Lorg/a/a/v;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lorg/a/a/v;->f:I

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput-boolean v2, v0, Lorg/a/a/v;->c:Z

    invoke-virtual {p0}, Lorg/a/a/a;->getTokenNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/a/a/a;->displayRecognitionError([Ljava/lang/String;Lorg/a/a/u;)V

    return-void
.end method

.method public reset()V
    .registers 4

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    const/4 v1, -0x1

    iput v1, v0, Lorg/a/a/v;->b:I

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/a/a/v;->c:Z

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput v1, v0, Lorg/a/a/v;->d:I

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput-boolean v2, v0, Lorg/a/a/v;->e:Z

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput v2, v0, Lorg/a/a/v;->f:I

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput v2, v0, Lorg/a/a/v;->g:I

    return-void
.end method

.method public setBacktrackingLevel(I)V
    .registers 3

    iget-object v0, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iput p1, v0, Lorg/a/a/v;->g:I

    return-void
.end method

.method public toStrings(Ljava/util/List;)Ljava/util/List;
    .registers 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/x;

    invoke-interface {v2}, Lorg/a/a/x;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public traceIn(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget p1, p1, Lorg/a/a/v;->g:I

    if-lez p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " backtracking="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget p3, p3, Lorg/a/a/v;->g:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public traceOut(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget p1, p1, Lorg/a/a/v;->g:I

    if-lez p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " backtracking="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget p3, p3, Lorg/a/a/v;->g:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget-boolean p1, p1, Lorg/a/a/v;->e:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, " failed"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, " succeeded"

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method
