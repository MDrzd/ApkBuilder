.class public Lcom/gmail/heagoo/httpserver/h;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->a:I

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->b:I

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->c:I

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->d:I

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->e:I

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->f:I

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->g:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget v0, p0, Lcom/gmail/heagoo/httpserver/h;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->g:I

    return-void
.end method

.method public a(Lb/b/c/b/i;Lb/b/c/b/i;)V
    .registers 6

    iget v0, p0, Lcom/gmail/heagoo/httpserver/h;->e:I

    invoke-virtual {p2}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/c/b/l;->f()I

    move-result v1

    invoke-virtual {p1}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/c/b/l;->f()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->e:I

    iget v0, p0, Lcom/gmail/heagoo/httpserver/h;->d:I

    invoke-virtual {p2}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/c/b/l;->g()I

    move-result v1

    invoke-virtual {p1}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/c/b/l;->g()I

    move-result p1

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->d:I

    iget p1, p0, Lcom/gmail/heagoo/httpserver/h;->f:I

    invoke-virtual {p2}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/c/b/l;->f()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/gmail/heagoo/httpserver/h;->f:I

    return-void
.end method

.method public a(Lcom/gmail/heagoo/pngeditor/j;Lcom/gmail/heagoo/pngeditor/j;)V
    .registers 6

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/c;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/c;->f()I

    move-result p1

    invoke-virtual {p2}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/c;->i()I

    move-result v1

    iget v2, p0, Lcom/gmail/heagoo/httpserver/h;->b:I

    sub-int v0, v1, v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/gmail/heagoo/httpserver/h;->b:I

    iget v0, p0, Lcom/gmail/heagoo/httpserver/h;->a:I

    invoke-virtual {p2}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/b/c;->f()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/gmail/heagoo/httpserver/h;->a:I

    iget p1, p0, Lcom/gmail/heagoo/httpserver/h;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/gmail/heagoo/httpserver/h;->c:I

    return-void
.end method

.method public a(Ljava/io/PrintStream;)V
    .registers 13

    const-string v0, "Optimizer Delta Rop Insns: %d total: %d (%.2f%%) Delta Registers: %d\n"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/gmail/heagoo/httpserver/h;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/gmail/heagoo/httpserver/h;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Lcom/gmail/heagoo/httpserver/h;->b:I

    int-to-float v3, v3

    iget v6, p0, Lcom/gmail/heagoo/httpserver/h;->c:I

    iget v7, p0, Lcom/gmail/heagoo/httpserver/h;->b:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget v3, p0, Lcom/gmail/heagoo/httpserver/h;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const-string v0, "Optimizer Delta Dex Insns: Insns: %d total: %d (%.2f%%) Delta Registers: %d\n"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/gmail/heagoo/httpserver/h;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/gmail/heagoo/httpserver/h;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/gmail/heagoo/httpserver/h;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/gmail/heagoo/httpserver/h;->f:I

    iget v10, p0, Lcom/gmail/heagoo/httpserver/h;->e:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v3, v10

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/gmail/heagoo/httpserver/h;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const-string v0, "Original bytecode byte count: %d\n"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/gmail/heagoo/httpserver/h;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method
