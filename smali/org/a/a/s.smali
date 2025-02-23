.class public Lorg/a/a/s;
.super Lorg/a/a/a;


# instance fields
.field public input:Lorg/a/a/z;


# direct methods
.method public constructor <init>(Lorg/a/a/z;)V
    .registers 2

    invoke-direct {p0}, Lorg/a/a/a;-><init>()V

    invoke-virtual {p0, p1}, Lorg/a/a/s;->setTokenStream(Lorg/a/a/z;)V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/z;Lorg/a/a/v;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/a/a/a;-><init>(Lorg/a/a/v;)V

    iput-object p1, p0, Lorg/a/a/s;->input:Lorg/a/a/z;

    return-void
.end method


# virtual methods
.method protected getCurrentInputSymbol(Lorg/a/a/j;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lorg/a/a/z;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/a/a/z;->g(I)Lorg/a/a/x;

    move-result-object p1

    return-object p1
.end method

.method protected getMissingSymbol(Lorg/a/a/j;Lorg/a/a/u;ILorg/a/a/b;)Ljava/lang/Object;
    .registers 6

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    const-string p4, "<missing EOF>"

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "<missing "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/s;->getTokenNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    new-instance v0, Lorg/a/a/e;

    invoke-direct {v0, p3, p4}, Lorg/a/a/e;-><init>(ILjava/lang/String;)V

    check-cast p1, Lorg/a/a/z;

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lorg/a/a/z;->g(I)Lorg/a/a/x;

    move-result-object p3

    invoke-interface {p3}, Lorg/a/a/x;->getType()I

    move-result p4

    if-ne p4, p2, :cond_1

    invoke-interface {p1, p2}, Lorg/a/a/z;->g(I)Lorg/a/a/x;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Lorg/a/a/x;->getLine()I

    move-result p1

    iput p1, v0, Lorg/a/a/e;->line:I

    invoke-interface {p3}, Lorg/a/a/x;->getCharPositionInLine()I

    move-result p1

    iput p1, v0, Lorg/a/a/e;->charPositionInLine:I

    const/4 p1, 0x0

    iput p1, v0, Lorg/a/a/e;->channel:I

    invoke-interface {p3}, Lorg/a/a/x;->getInputStream()Lorg/a/a/d;

    move-result-object p1

    iput-object p1, v0, Lorg/a/a/e;->input:Lorg/a/a/d;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/s;->input:Lorg/a/a/z;

    invoke-interface {v0}, Lorg/a/a/z;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenStream()Lorg/a/a/z;
    .registers 2

    iget-object v0, p0, Lorg/a/a/s;->input:Lorg/a/a/z;

    return-object v0
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Lorg/a/a/a;->reset()V

    iget-object v0, p0, Lorg/a/a/s;->input:Lorg/a/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/s;->input:Lorg/a/a/z;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/a/a/z;->b(I)V

    :cond_0
    return-void
.end method

.method public setTokenStream(Lorg/a/a/z;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/s;->input:Lorg/a/a/z;

    invoke-virtual {p0}, Lorg/a/a/s;->reset()V

    iput-object p1, p0, Lorg/a/a/s;->input:Lorg/a/a/z;

    return-void
.end method

.method public traceIn(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/a/a/s;->input:Lorg/a/a/z;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/a/z;->g(I)Lorg/a/a/x;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/a/a/a;->traceIn(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public traceOut(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/a/a/s;->input:Lorg/a/a/z;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/a/a/z;->g(I)Lorg/a/a/x;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/a/a/a;->traceOut(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
