.class final Lcom/gmail/heagoo/apkeditor/cq;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/gmail/heagoo/apkeditor/cp;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/gmail/heagoo/apkeditor/bs;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/l;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .registers 8

    const v0, 0x7f0e00a4

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/cq;->requestWindowFeature(I)Z

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/cq;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/cq;->m:Ljava/util/List;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/cq;->n:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/gmail/heagoo/apkeditor/cq;->o:Z

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->l:Ljava/lang/String;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/cq;->l:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->l:Ljava/lang/String;

    :cond_1
    const p2, 0x7f0a005b

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p2, 0x7f0a005d

    goto :goto_0

    :pswitch_1
    const p2, 0x7f0a005c

    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0801cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->b:Landroid/widget/TextView;

    const p2, 0x7f08017b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->c:Landroid/view/View;

    const p2, 0x7f0801a1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->d:Landroid/widget/TextView;

    const p2, 0x7f0800d7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->e:Landroid/widget/ListView;

    const p2, 0x7f08019c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->g:Landroid/widget/LinearLayout;

    const p2, 0x7f080132

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->j:Landroid/view/View;

    const p2, 0x7f080145

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->k:Landroid/view/View;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->j:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->k:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08004a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->h:Landroid/widget/Button;

    const p2, 0x7f08004e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->i:Landroid/widget/Button;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->h:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->i:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->e:Landroid/widget/ListView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setVisibility(I)V

    new-instance p2, Lcom/gmail/heagoo/apkeditor/cw;

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/cq;->l:Ljava/lang/String;

    iget-object p4, p0, Lcom/gmail/heagoo/apkeditor/cq;->m:Ljava/util/List;

    iget-object p5, p0, Lcom/gmail/heagoo/apkeditor/cq;->n:Ljava/lang/String;

    invoke-direct {p2, p0, p3, p4, p5}, Lcom/gmail/heagoo/apkeditor/cw;-><init>(Lcom/gmail/heagoo/apkeditor/cq;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/apkeditor/cw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/cq;->setContentView(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    const v2, 0x7f0d02b0

    invoke-virtual {v0, v2}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cq;->n:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cq;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/cq;I)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/apkeditor/cq;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/gmail/heagoo/apkeditor/ci;->e(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/gmail/heagoo/apkeditor/bs;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/bs;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/cq;->a()V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/cq;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/cq;->o:Z

    return p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/cq;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/cq;I)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/gmail/heagoo/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/cq;)V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    const v1, 0x7f0d02b0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/cq;->n:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cq;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bs;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/l;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/cq;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0, v2, v4}, Lcom/gmail/heagoo/apkeditor/bs;-><init>(Lcom/gmail/heagoo/apkeditor/l;Lcom/gmail/heagoo/apkeditor/cp;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cq;->g:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/cq;I)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/cr;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/cr;-><init>(Lcom/gmail/heagoo/apkeditor/cq;)V

    invoke-virtual {v0, p1, v1}, Lcom/gmail/heagoo/apkeditor/l;->a(Ljava/lang/String;Lcom/gmail/heagoo/apkeditor/dq;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/cq;)Lcom/gmail/heagoo/apkeditor/bs;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/cq;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    const v1, 0x7f0d01f0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cq;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->i:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08004a

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/cq;->dismiss()V

    return-void

    :cond_0
    const v0, 0x7f08004e

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/bs;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/cq;->a(Ljava/util/List;)V

    return-void

    :cond_1
    const v0, 0x7f080132

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/bs;->c()V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/cq;->a()V

    return-void

    :cond_2
    const v0, 0x7f080145

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/bs;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/bs;->c()V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/cq;->a()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->f:Lcom/gmail/heagoo/apkeditor/bs;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/bs;->b()V

    :cond_4
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cq;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmail/heagoo/apkeditor/l;

    invoke-virtual {p2, p4, p1, p3}, Lcom/gmail/heagoo/apkeditor/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6

    new-instance p2, Lcom/gmail/heagoo/apkeditor/cs;

    invoke-direct {p2, p0, p3}, Lcom/gmail/heagoo/apkeditor/cs;-><init>(Lcom/gmail/heagoo/apkeditor/cq;I)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const/4 p1, 0x0

    return p1
.end method
