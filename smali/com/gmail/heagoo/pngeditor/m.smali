.class public Lcom/gmail/heagoo/pngeditor/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/m;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/pngeditor/m;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lb/b/g/b;->a(I)Lb/b/h/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 7

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/gmail/heagoo/pngeditor/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/pngeditor/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/gmail/heagoo/pngeditor/m;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lb/b/g/b;->a(I)Lb/b/h/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/h/l;

    invoke-interface {v0, p2}, Lb/b/h/l;->a(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/h/l;

    invoke-interface {p2, p1}, Lb/b/h/l;->a(I)V

    return-void
.end method

.method public a(ILb/b/h/l;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/h/l;

    invoke-interface {p2, p1}, Lb/b/h/l;->a(Lb/b/h/l;)V

    :cond_0
    return-void
.end method
