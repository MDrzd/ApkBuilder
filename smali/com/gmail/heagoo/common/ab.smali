.class public Lcom/gmail/heagoo/common/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/a/i;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I


# direct methods
.method public constructor <init>(Lb/a/i;IIIIIIIII)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/common/ab;->a:Lb/a/i;

    iput p2, p0, Lcom/gmail/heagoo/common/ab;->b:I

    iput p3, p0, Lcom/gmail/heagoo/common/ab;->c:I

    iput p4, p0, Lcom/gmail/heagoo/common/ab;->d:I

    iput p5, p0, Lcom/gmail/heagoo/common/ab;->e:I

    iput p6, p0, Lcom/gmail/heagoo/common/ab;->f:I

    iput p7, p0, Lcom/gmail/heagoo/common/ab;->g:I

    iput p8, p0, Lcom/gmail/heagoo/common/ab;->h:I

    iput p9, p0, Lcom/gmail/heagoo/common/ab;->i:I

    iput p10, p0, Lcom/gmail/heagoo/common/ab;->j:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/ab;->b:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/ab;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/ab;->e:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/ab;->f:I

    return v0
.end method

.method public e()[S
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/common/ab;->a:Lb/a/i;

    iget v1, p0, Lcom/gmail/heagoo/common/ab;->f:I

    invoke-virtual {v0, v1}, Lb/a/i;->b(I)Lb/a/ae;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/ae;->a()[S

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/ab;->d:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/ab;->g:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/ab;->h:I

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/ab;->i:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/ab;->j:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/ab;->a:Lb/a/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/gmail/heagoo/common/ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/common/ab;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/common/ab;->a:Lb/a/i;

    invoke-virtual {v1}, Lb/a/i;->g()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/gmail/heagoo/common/ab;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/common/ab;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/common/ab;->a:Lb/a/i;

    invoke-virtual {v1}, Lb/a/i;->g()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/gmail/heagoo/common/ab;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
