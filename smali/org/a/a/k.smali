.class public abstract Lorg/a/a/k;
.super Lorg/a/a/a;

# interfaces
.implements Lorg/a/a/y;


# instance fields
.field protected input:Lorg/a/a/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/d;)V
    .registers 2

    invoke-direct {p0}, Lorg/a/a/a;-><init>()V

    iput-object p1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    return-void
.end method

.method public constructor <init>(Lorg/a/a/d;Lorg/a/a/v;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/a/a/a;-><init>(Lorg/a/a/v;)V

    iput-object p1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    return-void
.end method


# virtual methods
.method public emit()Lorg/a/a/x;
    .registers 8

    new-instance v6, Lorg/a/a/e;

    iget-object v1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget v4, v0, Lorg/a/a/v;->i:I

    invoke-virtual {p0}, Lorg/a/a/k;->getCharIndex()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/a/a/e;-><init>(Lorg/a/a/d;IIII)V

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->j:I

    invoke-interface {v6, v0}, Lorg/a/a/x;->setLine(I)V

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget-object v0, v0, Lorg/a/a/v;->n:Ljava/lang/String;

    invoke-interface {v6, v0}, Lorg/a/a/x;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->k:I

    invoke-interface {v6, v0}, Lorg/a/a/x;->setCharPositionInLine(I)V

    invoke-virtual {p0, v6}, Lorg/a/a/k;->emit(Lorg/a/a/x;)V

    return-object v6
.end method

.method public emit(Lorg/a/a/x;)V
    .registers 3

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput-object p1, v0, Lorg/a/a/v;->h:Lorg/a/a/x;

    return-void
.end method

.method public getCharErrorDisplay(I)Ljava/lang/String;
    .registers 4

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "\\n"

    goto :goto_0

    :pswitch_1
    const-string v0, "\\t"

    goto :goto_0

    :cond_0
    const-string v0, "\\r"

    goto :goto_0

    :cond_1
    const-string v0, "<EOF>"

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCharIndex()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v0}, Lorg/a/a/d;->a()I

    move-result v0

    return v0
.end method

.method public getCharPositionInLine()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v0}, Lorg/a/a/d;->j()I

    move-result v0

    return v0
.end method

.method public getCharStream()Lorg/a/a/d;
    .registers 2

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    return-object v0
.end method

.method public getEOFToken()Lorg/a/a/x;
    .registers 8

    new-instance v6, Lorg/a/a/e;

    iget-object v1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v0}, Lorg/a/a/d;->a()I

    move-result v4

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v0}, Lorg/a/a/d;->a()I

    move-result v5

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/a/a/e;-><init>(Lorg/a/a/d;IIII)V

    invoke-virtual {p0}, Lorg/a/a/k;->getLine()I

    move-result v0

    invoke-interface {v6, v0}, Lorg/a/a/x;->setLine(I)V

    invoke-virtual {p0}, Lorg/a/a/k;->getCharPositionInLine()I

    move-result v0

    invoke-interface {v6, v0}, Lorg/a/a/x;->setCharPositionInLine(I)V

    return-object v6
.end method

.method public getErrorMessage(Lorg/a/a/u;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    instance-of v0, p1, Lorg/a/a/o;

    if-eqz v0, :cond_0

    move-object p2, p1

    check-cast p2, Lorg/a/a/o;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mismatched character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/a/a/u;->c:I

    invoke-virtual {p0, p1}, Lorg/a/a/k;->getCharErrorDisplay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expecting "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lorg/a/a/o;->a:I

    :goto_0
    invoke-virtual {p0, p1}, Lorg/a/a/k;->getCharErrorDisplay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_0
    instance-of v0, p1, Lorg/a/a/r;

    if-eqz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "no viable alternative at character "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    iget p1, p1, Lorg/a/a/u;->c:I

    invoke-virtual {p0, p1}, Lorg/a/a/k;->getCharErrorDisplay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_1
    instance-of v0, p1, Lorg/a/a/h;

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "required (...)+ loop did not match anything at character "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lorg/a/a/l;

    if-eqz v0, :cond_3

    move-object p2, p1

    check-cast p2, Lorg/a/a/l;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mismatched character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/a/a/u;->c:I

    invoke-virtual {p0, p1}, Lorg/a/a/k;->getCharErrorDisplay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expecting set "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lorg/a/a/l;->a:Lorg/a/a/b;

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lorg/a/a/n;

    if-eqz v0, :cond_4

    move-object p2, p1

    check-cast p2, Lorg/a/a/n;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mismatched character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/a/a/u;->c:I

    invoke-virtual {p0, p1}, Lorg/a/a/k;->getCharErrorDisplay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expecting set "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lorg/a/a/n;->a:Lorg/a/a/b;

    goto :goto_3

    :cond_4
    instance-of v0, p1, Lorg/a/a/m;

    if-eqz v0, :cond_5

    move-object p2, p1

    check-cast p2, Lorg/a/a/m;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mismatched character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/a/a/u;->c:I

    invoke-virtual {p0, p1}, Lorg/a/a/k;->getCharErrorDisplay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expecting set "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lorg/a/a/m;->a:I

    invoke-virtual {p0, p1}, Lorg/a/a/k;->getCharErrorDisplay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lorg/a/a/m;->b:I

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lorg/a/a/a;->getErrorMessage(Lorg/a/a/u;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method public getLine()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v0}, Lorg/a/a/d;->i()I

    move-result v0

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v0}, Lorg/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget-object v0, v0, Lorg/a/a/v;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget-object v0, v0, Lorg/a/a/v;->n:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-virtual {p0}, Lorg/a/a/k;->getCharIndex()I

    invoke-interface {v0}, Lorg/a/a/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract mTokens()V
.end method

.method public match(I)V
    .registers 4

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/a/d;->e(I)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->g:I

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput-boolean v1, p1, Lorg/a/a/v;->e:Z

    return-void

    :cond_0
    new-instance v0, Lorg/a/a/o;

    iget-object v1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-direct {v0, p1, v1}, Lorg/a/a/o;-><init>(ILorg/a/a/j;)V

    invoke-virtual {p0, v0}, Lorg/a/a/k;->recover(Lorg/a/a/u;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {p1}, Lorg/a/a/d;->e()V

    iget-object p1, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/a/a/v;->e:Z

    return-void
.end method

.method public match(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/a/a/d;->e(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->g:I

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput-boolean v3, p1, Lorg/a/a/v;->e:Z

    return-void

    :cond_0
    new-instance v0, Lorg/a/a/o;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-object v1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-direct {v0, p1, v1}, Lorg/a/a/o;-><init>(ILorg/a/a/j;)V

    invoke-virtual {p0, v0}, Lorg/a/a/k;->recover(Lorg/a/a/u;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v2}, Lorg/a/a/d;->e()V

    iget-object v2, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput-boolean v0, v2, Lorg/a/a/v;->e:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public matchAny()V
    .registers 2

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v0}, Lorg/a/a/d;->e()V

    return-void
.end method

.method public matchRange(II)V
    .registers 5

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/a/d;->e(I)I

    move-result v0

    if-lt v0, p1, :cond_1

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v0, v1}, Lorg/a/a/d;->e(I)I

    move-result v0

    if-le v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {p1}, Lorg/a/a/d;->e()V

    iget-object p1, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/a/a/v;->e:Z

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->g:I

    if-lez v0, :cond_2

    iget-object p1, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput-boolean v1, p1, Lorg/a/a/v;->e:Z

    return-void

    :cond_2
    new-instance v0, Lorg/a/a/m;

    iget-object v1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-direct {v0, p1, p2, v1}, Lorg/a/a/m;-><init>(IILorg/a/a/j;)V

    invoke-virtual {p0, v0}, Lorg/a/a/k;->recover(Lorg/a/a/u;)V

    throw v0
.end method

.method public nextToken()Lorg/a/a/x;
    .registers 4

    :goto_0
    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/a/a/v;->h:Lorg/a/a/x;

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    const/4 v2, 0x0

    iput v2, v0, Lorg/a/a/v;->l:I

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget-object v2, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v2}, Lorg/a/a/d;->a()I

    move-result v2

    iput v2, v0, Lorg/a/a/v;->i:I

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget-object v2, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v2}, Lorg/a/a/d;->j()I

    move-result v2

    iput v2, v0, Lorg/a/a/v;->k:I

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget-object v2, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v2}, Lorg/a/a/d;->i()I

    move-result v2

    iput v2, v0, Lorg/a/a/v;->j:I

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput-object v1, v0, Lorg/a/a/v;->n:Ljava/lang/String;

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/a/d;->e(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/k;->getEOFToken()Lorg/a/a/x;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/k;->mTokens()V

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget-object v0, v0, Lorg/a/a/v;->h:Lorg/a/a/x;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/a/a/k;->emit()Lorg/a/a/x;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget-object v0, v0, Lorg/a/a/v;->h:Lorg/a/a/x;

    sget-object v1, Lorg/a/a/x;->b:Lorg/a/a/x;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iget-object v0, v0, Lorg/a/a/v;->h:Lorg/a/a/x;
    :try_end_0
    .catch Lorg/a/a/m; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/a/a/o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/a/a/u; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/a/a/k;->reportError(Lorg/a/a/u;)V

    invoke-virtual {p0, v0}, Lorg/a/a/k;->recover(Lorg/a/a/u;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/a/a/k;->reportError(Lorg/a/a/u;)V

    goto :goto_0
.end method

.method public recover(Lorg/a/a/u;)V
    .registers 2

    iget-object p1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {p1}, Lorg/a/a/d;->e()V

    return-void
.end method

.method public reportError(Lorg/a/a/u;)V
    .registers 3

    invoke-virtual {p0}, Lorg/a/a/k;->getTokenNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/a/a/k;->displayRecognitionError([Ljava/lang/String;Lorg/a/a/u;)V

    return-void
.end method

.method public reset()V
    .registers 4

    invoke-super {p0}, Lorg/a/a/a;->reset()V

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v0, v1}, Lorg/a/a/d;->b(I)V

    :cond_0
    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/a/a/v;->h:Lorg/a/a/x;

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput v1, v0, Lorg/a/a/v;->m:I

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput v1, v0, Lorg/a/a/v;->l:I

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    const/4 v1, -0x1

    iput v1, v0, Lorg/a/a/v;->i:I

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput v1, v0, Lorg/a/a/v;->k:I

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput v1, v0, Lorg/a/a/v;->j:I

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput-object v2, v0, Lorg/a/a/v;->n:Ljava/lang/String;

    return-void
.end method

.method public setCharStream(Lorg/a/a/d;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-virtual {p0}, Lorg/a/a/k;->reset()V

    iput-object p1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    iput-object p1, v0, Lorg/a/a/v;->n:Ljava/lang/String;

    return-void
.end method

.method public skip()V
    .registers 3

    iget-object v0, p0, Lorg/a/a/k;->state:Lorg/a/a/v;

    sget-object v1, Lorg/a/a/x;->b:Lorg/a/a/x;

    iput-object v1, v0, Lorg/a/a/v;->h:Lorg/a/a/x;

    return-void
.end method

.method public traceIn(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v1}, Lorg/a/a/d;->h()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/a/a/k;->getLine()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/a/a/k;->getCharPositionInLine()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/a/a/a;->traceIn(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public traceOut(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/a/a/k;->input:Lorg/a/a/d;

    invoke-interface {v1}, Lorg/a/a/d;->h()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/a/a/k;->getLine()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/a/a/k;->getCharPositionInLine()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/a/a/a;->traceOut(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
