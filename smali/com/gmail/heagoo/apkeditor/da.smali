.class final Lcom/gmail/heagoo/apkeditor/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/gmail/heagoo/apkeditor/cx;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/cx;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/da;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/da;->a:I

    const-string p1, ""

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/da;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/cx;->a(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/cx;->d(Lcom/gmail/heagoo/apkeditor/cx;)Lcom/gmail/heagoo/apkeditor/bv;

    move-result-object v2

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/da;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/gmail/heagoo/apkeditor/bv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/da;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/cx;->g(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmail/heagoo/apkeditor/l;

    const v4, 0x7f0d0157

    invoke-virtual {v3, v4}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/da;->b:Ljava/lang/String;

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/da;->a:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/gmail/heagoo/apkeditor/da;->a:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/cx;->d(Lcom/gmail/heagoo/apkeditor/cx;)Lcom/gmail/heagoo/apkeditor/bv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/bv;->getGroupCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/cx;->e(Lcom/gmail/heagoo/apkeditor/cx;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/cx;->d(Lcom/gmail/heagoo/apkeditor/cx;)Lcom/gmail/heagoo/apkeditor/bv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/gmail/heagoo/apkeditor/bv;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/cx;->g(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/l;

    const v2, 0x7f0d02b6

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v4}, Lcom/gmail/heagoo/apkeditor/cx;->a(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/gmail/heagoo/apkeditor/da;->a:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/gmail/heagoo/apkeditor/da;->a:I

    if-lez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/da;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/cx;->g(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/da;->d:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/cx;->g(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_1
.end method
