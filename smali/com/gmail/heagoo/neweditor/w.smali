.class public Lcom/gmail/heagoo/neweditor/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lb/b/c/b/g;

.field private final b:[Lb/b/c/b/g;

.field private final c:[Lb/b/c/b/g;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/pngeditor/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/c;->l()I

    move-result v0

    new-array v1, v0, [Lb/b/c/b/g;

    iput-object v1, p0, Lcom/gmail/heagoo/neweditor/w;->a:[Lb/b/c/b/g;

    new-array v1, v0, [Lb/b/c/b/g;

    iput-object v1, p0, Lcom/gmail/heagoo/neweditor/w;->b:[Lb/b/c/b/g;

    new-array v0, v0, [Lb/b/c/b/g;

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/w;->c:[Lb/b/c/b/g;

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/neweditor/w;->a(Lcom/gmail/heagoo/pngeditor/j;)V

    return-void
.end method

.method private a(Lcom/gmail/heagoo/pngeditor/j;)V
    .registers 10

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/c;->a_()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/a;->a()I

    move-result v4

    invoke-virtual {v3}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v5

    invoke-virtual {v5, v1}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v5

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/w;->a:[Lb/b/c/b/g;

    new-instance v7, Lb/b/c/b/g;

    invoke-virtual {v5}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v5

    invoke-direct {v7, v5}, Lb/b/c/b/g;-><init>(Lb/b/f/b/z;)V

    aput-object v7, v6, v4

    invoke-virtual {v3}, Lb/b/f/b/a;->g()Lb/b/f/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v3

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/w;->b:[Lb/b/c/b/g;

    new-instance v6, Lb/b/c/b/g;

    invoke-direct {v6, v3}, Lb/b/c/b/g;-><init>(Lb/b/f/b/z;)V

    aput-object v6, v5, v4

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/w;->c:[Lb/b/c/b/g;

    new-instance v6, Lb/b/c/b/g;

    invoke-direct {v6, v3}, Lb/b/c/b/g;-><init>(Lb/b/f/b/z;)V

    aput-object v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lb/b/c/b/g;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/w;->a:[Lb/b/c/b/g;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(Lb/b/f/b/a;)Lb/b/c/b/g;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/w;->a:[Lb/b/c/b/g;

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(Lb/b/f/b/a;)Lb/b/c/b/g;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/w;->b:[Lb/b/c/b/g;

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c(Lb/b/f/b/a;)Lb/b/c/b/g;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/w;->c:[Lb/b/c/b/g;

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method
