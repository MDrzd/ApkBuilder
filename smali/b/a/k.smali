.class final Lb/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Lb/a/o;

.field private b:I

.field private synthetic c:Lb/a/i;


# direct methods
.method private constructor <init>(Lb/a/i;)V
    .registers 3

    iput-object p1, p0, Lb/a/k;->c:Lb/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lb/a/k;->c:Lb/a/i;

    iget-object v0, p0, Lb/a/k;->c:Lb/a/i;

    invoke-static {v0}, Lb/a/i;->a(Lb/a/i;)Lb/a/ac;

    move-result-object v0

    iget-object v0, v0, Lb/a/ac;->g:Lb/a/ad;

    iget v0, v0, Lb/a/ad;->c:I

    invoke-virtual {p1, v0}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/a/k;->a:Lb/a/o;

    const/4 p1, 0x0

    iput p1, p0, Lb/a/k;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lb/a/i;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/a/k;-><init>(Lb/a/i;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lb/a/k;->b:I

    iget-object v1, p0, Lb/a/k;->c:Lb/a/i;

    invoke-static {v1}, Lb/a/i;->a(Lb/a/i;)Lb/a/ac;

    move-result-object v1

    iget-object v1, v1, Lb/a/ac;->g:Lb/a/ad;

    iget v1, v1, Lb/a/ad;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 14

    invoke-virtual {p0}, Lb/a/k;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/k;->b:I

    iget-object v0, p0, Lb/a/k;->a:Lb/a/o;

    invoke-virtual {v0}, Lb/a/o;->b()I

    move-result v3

    invoke-virtual {v0}, Lb/a/o;->c()I

    move-result v4

    invoke-virtual {v0}, Lb/a/o;->c()I

    move-result v5

    invoke-virtual {v0}, Lb/a/o;->c()I

    move-result v6

    invoke-virtual {v0}, Lb/a/o;->c()I

    move-result v7

    invoke-virtual {v0}, Lb/a/o;->c()I

    move-result v8

    invoke-virtual {v0}, Lb/a/o;->c()I

    move-result v9

    invoke-virtual {v0}, Lb/a/o;->c()I

    move-result v10

    invoke-virtual {v0}, Lb/a/o;->c()I

    move-result v11

    new-instance v12, Lcom/gmail/heagoo/common/ab;

    iget-object v2, v0, Lb/a/o;->a:Lb/a/i;

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/gmail/heagoo/common/ab;-><init>(Lb/a/i;IIIIIIIII)V

    return-object v12

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
