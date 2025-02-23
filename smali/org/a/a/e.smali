.class public Lorg/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/a/a/x;


# instance fields
.field protected channel:I

.field protected charPositionInLine:I

.field protected index:I

.field protected transient input:Lorg/a/a/d;

.field protected line:I

.field protected start:I

.field protected stop:I

.field protected text:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/e;->charPositionInLine:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/a/a/e;->channel:I

    iput v0, p0, Lorg/a/a/e;->index:I

    iput p1, p0, Lorg/a/a/e;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/e;->charPositionInLine:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/a/a/e;->channel:I

    iput v0, p0, Lorg/a/a/e;->index:I

    iput p1, p0, Lorg/a/a/e;->type:I

    iput v1, p0, Lorg/a/a/e;->channel:I

    iput-object p2, p0, Lorg/a/a/e;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/a/a/d;IIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/e;->charPositionInLine:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/a/a/e;->channel:I

    iput v0, p0, Lorg/a/a/e;->index:I

    iput-object p1, p0, Lorg/a/a/e;->input:Lorg/a/a/d;

    iput p2, p0, Lorg/a/a/e;->type:I

    iput p3, p0, Lorg/a/a/e;->channel:I

    iput p4, p0, Lorg/a/a/e;->start:I

    iput p5, p0, Lorg/a/a/e;->stop:I

    return-void
.end method

.method public constructor <init>(Lorg/a/a/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/e;->charPositionInLine:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/a/a/e;->channel:I

    iput v0, p0, Lorg/a/a/e;->index:I

    invoke-interface {p1}, Lorg/a/a/x;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/e;->text:Ljava/lang/String;

    invoke-interface {p1}, Lorg/a/a/x;->getType()I

    move-result v0

    iput v0, p0, Lorg/a/a/e;->type:I

    invoke-interface {p1}, Lorg/a/a/x;->getLine()I

    move-result v0

    iput v0, p0, Lorg/a/a/e;->line:I

    invoke-interface {p1}, Lorg/a/a/x;->getTokenIndex()I

    move-result v0

    iput v0, p0, Lorg/a/a/e;->index:I

    invoke-interface {p1}, Lorg/a/a/x;->getCharPositionInLine()I

    move-result v0

    iput v0, p0, Lorg/a/a/e;->charPositionInLine:I

    invoke-interface {p1}, Lorg/a/a/x;->getChannel()I

    move-result v0

    iput v0, p0, Lorg/a/a/e;->channel:I

    invoke-interface {p1}, Lorg/a/a/x;->getInputStream()Lorg/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/e;->input:Lorg/a/a/d;

    instance-of v0, p1, Lorg/a/a/e;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/a/a/e;

    iget v0, p1, Lorg/a/a/e;->start:I

    iput v0, p0, Lorg/a/a/e;->start:I

    iget p1, p1, Lorg/a/a/e;->stop:I

    iput p1, p0, Lorg/a/a/e;->stop:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getChannel()I
    .registers 2

    iget v0, p0, Lorg/a/a/e;->channel:I

    return v0
.end method

.method public getCharPositionInLine()I
    .registers 2

    iget v0, p0, Lorg/a/a/e;->charPositionInLine:I

    return v0
.end method

.method public getInputStream()Lorg/a/a/d;
    .registers 2

    iget-object v0, p0, Lorg/a/a/e;->input:Lorg/a/a/d;

    return-object v0
.end method

.method public getLine()I
    .registers 2

    iget v0, p0, Lorg/a/a/e;->line:I

    return v0
.end method

.method public getStartIndex()I
    .registers 2

    iget v0, p0, Lorg/a/a/e;->start:I

    return v0
.end method

.method public getStopIndex()I
    .registers 2

    iget v0, p0, Lorg/a/a/e;->stop:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/a/a/e;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/e;->text:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/e;->input:Lorg/a/a/d;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/a/a/e;->input:Lorg/a/a/d;

    invoke-interface {v0}, Lorg/a/a/d;->d()I

    move-result v0

    iget v1, p0, Lorg/a/a/e;->start:I

    if-ge v1, v0, :cond_2

    iget v1, p0, Lorg/a/a/e;->stop:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/a/a/e;->input:Lorg/a/a/d;

    invoke-interface {v0}, Lorg/a/a/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "<EOF>"

    return-object v0
.end method

.method public getTokenIndex()I
    .registers 2

    iget v0, p0, Lorg/a/a/e;->index:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lorg/a/a/e;->type:I

    return v0
.end method

.method public setChannel(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/e;->channel:I

    return-void
.end method

.method public setCharPositionInLine(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/e;->charPositionInLine:I

    return-void
.end method

.method public setInputStream(Lorg/a/a/d;)V
    .registers 2

    iput-object p1, p0, Lorg/a/a/e;->input:Lorg/a/a/d;

    return-void
.end method

.method public setLine(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/e;->line:I

    return-void
.end method

.method public setStartIndex(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/e;->start:I

    return-void
.end method

.method public setStopIndex(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/e;->stop:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/a/a/e;->text:Ljava/lang/String;

    return-void
.end method

.method public setTokenIndex(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/e;->index:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/e;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    iget v1, p0, Lorg/a/a/e;->channel:I

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/a/a/e;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/e;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "\n"

    const-string v3, "\\\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, "\\\\r"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    const-string v3, "\\\\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "<no text>"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/e;->getTokenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/a/a/e;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/a/a/e;->stop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',<"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/a/a/e;->type:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/a/a/e;->line:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/a/a/e;->getCharPositionInLine()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
