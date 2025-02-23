.class public Lcom/gmail/heagoo/neweditor/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/c/b/y;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/b/a/a;IIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/c/b/y;

    invoke-direct {v0, p1, p2, p4, p5}, Lb/b/c/b/y;-><init>(Lcom/gmail/heagoo/b/a/a;III)V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/y;->a:Lb/b/c/b/y;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/y;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/y;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/y;->a:Lb/b/c/b/y;

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/y;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/b/k;

    invoke-virtual {v2, v3}, Lb/b/c/b/y;->a(Lb/b/c/b/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/y;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lb/b/c/b/y;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/y;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/y;->b()V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/y;->a:Lb/b/c/b/y;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILb/b/c/b/g;)V
    .registers 4

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/y;->a:Lb/b/c/b/y;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lb/b/c/b/y;->a(ILb/b/c/b/g;)V

    return-void
.end method

.method public a(Lb/b/c/b/k;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/y;->a:Lb/b/c/b/y;

    invoke-virtual {v0, p1}, Lb/b/c/b/y;->a(Lb/b/c/b/k;)V

    return-void
.end method

.method public b(Lb/b/c/b/k;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/y;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
