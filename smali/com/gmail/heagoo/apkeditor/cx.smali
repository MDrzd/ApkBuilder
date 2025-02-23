.class public final Lcom/gmail/heagoo/apkeditor/cx;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

.field private c:Landroid/widget/ExpandableListView;

.field private d:Lcom/gmail/heagoo/apkeditor/bv;

.field private e:Landroid/widget/LinearLayout;

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/util/ArrayList;

.field private l:Lcom/gmail/heagoo/apkeditor/ac/a;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/l;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .registers 12

    const v0, 0x7f0e00a4

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->k:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/cx;->requestWindowFeature(I)Z

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/cx;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cx;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/cx;->h:Ljava/util/List;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/cx;->i:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/gmail/heagoo/apkeditor/cx;->j:Z

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/cx;->g:Ljava/lang/String;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    const p2, 0x7f0a004c

    goto :goto_0

    :pswitch_0
    const p2, 0x7f0a004e

    goto :goto_0

    :pswitch_1
    const p2, 0x7f0a004d

    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0801cb

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/cx;->a:Landroid/widget/TextView;

    const p3, 0x7f0800c9

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/cx;->b:Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    const p4, 0x7f080127

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ExpandableListView;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/cx;->c:Landroid/widget/ExpandableListView;

    const p4, 0x7f08019c

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/cx;->e:Landroid/widget/LinearLayout;

    iget-object p4, p0, Lcom/gmail/heagoo/apkeditor/cx;->c:Landroid/widget/ExpandableListView;

    const/4 p5, 0x4

    invoke-virtual {p4, p5}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    new-instance p4, Lcom/gmail/heagoo/apkeditor/dh;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/cx;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/cx;->h:Ljava/util/List;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/cx;->i:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/gmail/heagoo/apkeditor/cx;->j:Z

    move-object v0, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gmail/heagoo/apkeditor/dh;-><init>(Lcom/gmail/heagoo/apkeditor/cx;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    const/4 p5, 0x0

    new-array p5, p5, [Ljava/lang/Object;

    invoke-virtual {p4, p5}, Lcom/gmail/heagoo/apkeditor/dh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const p4, 0x7f080064

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p4, Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p5, "search_replace_with"

    invoke-direct {p4, p1, p5}, Lcom/gmail/heagoo/apkeditor/ac/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/cx;->l:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/cx;->l:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-virtual {p1, p3}, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, p2}, Lcom/gmail/heagoo/apkeditor/cx;->setContentView(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cx;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/cx;I)V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cx;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/gmail/heagoo/apkeditor/ci;->e(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cx;->d:Lcom/gmail/heagoo/apkeditor/bv;

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/bv;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/cx;)V
    .registers 11

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    const v1, 0x7f0d02b0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/cx;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/cx;->i:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cx;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bv;

    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/cx;->c:Landroid/widget/ExpandableListView;

    iget-object v7, p0, Lcom/gmail/heagoo/apkeditor/cx;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/gmail/heagoo/apkeditor/cx;->k:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/gmail/heagoo/apkeditor/cx;->i:Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/gmail/heagoo/apkeditor/bv;-><init>(Ljava/lang/ref/WeakReference;Landroid/widget/ExpandableListView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->d:Lcom/gmail/heagoo/apkeditor/bv;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->c:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cx;->d:Lcom/gmail/heagoo/apkeditor/bv;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cx;->e:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/cx;I)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/gmail/heagoo/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/cx;I)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/l;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/df;

    invoke-direct {v2, p0, p1}, Lcom/gmail/heagoo/apkeditor/df;-><init>(Lcom/gmail/heagoo/apkeditor/cx;I)V

    invoke-virtual {v1, v0, v2}, Lcom/gmail/heagoo/apkeditor/l;->a(Ljava/lang/String;Lcom/gmail/heagoo/apkeditor/dq;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/cx;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/cx;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/cx;)Lcom/gmail/heagoo/apkeditor/bv;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cx;->d:Lcom/gmail/heagoo/apkeditor/bv;

    return-object p0
.end method

.method static synthetic e(Lcom/gmail/heagoo/apkeditor/cx;)Landroid/widget/ExpandableListView;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cx;->c:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method static synthetic f(Lcom/gmail/heagoo/apkeditor/cx;)Lcom/gmail/heagoo/apkeditor/ac/a;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cx;->l:Lcom/gmail/heagoo/apkeditor/ac/a;

    return-object p0
.end method

.method static synthetic g(Lcom/gmail/heagoo/apkeditor/cx;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ce;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/da;

    invoke-direct {v2, p0, p1}, Lcom/gmail/heagoo/apkeditor/da;-><init>(Lcom/gmail/heagoo/apkeditor/cx;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    return-void
.end method

.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 9

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cx;->d:Lcom/gmail/heagoo/apkeditor/bv;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/bv;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cx;->d:Lcom/gmail/heagoo/apkeditor/bv;

    invoke-virtual {p2, p3, p4}, Lcom/gmail/heagoo/apkeditor/bv;->getChild(II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmail/heagoo/apkeditor/bu;

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/16 p6, 0x64

    const/4 v0, 0x0

    if-le p5, p6, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmail/heagoo/apkeditor/l;

    invoke-static {p3, p1, v0}, Lcom/gmail/heagoo/apkeditor/fm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "startLine"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p2, Lcom/gmail/heagoo/apkeditor/bu;->a:I

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_2

    :cond_1
    iget-object p5, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/gmail/heagoo/apkeditor/l;

    invoke-static {p5, p1, p3, v0}, Lcom/gmail/heagoo/apkeditor/fm;->a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    const-string p6, "fileList"

    invoke-static {p5, p6, p1}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    const-string p6, "curFileIndex"

    invoke-static {p5, p6, p3}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/Bundle;

    new-instance p6, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p6, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-ge v0, p3, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget p2, p2, Lcom/gmail/heagoo/apkeditor/bu;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p3, p2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p1, "startLineList"

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1, p6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p5, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object p1, p5

    :goto_2
    const-string p2, "searchString"

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/cx;->i:Ljava/lang/String;

    invoke-static {p1, p2, p3}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmail/heagoo/apkeditor/l;

    invoke-virtual {p2, p1, p4}, Lcom/gmail/heagoo/apkeditor/l;->startActivityForResult(Landroid/content/Intent;I)V

    return p4
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080064

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cx;->b:Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cx;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/l;

    const v2, 0x7f0d02d8

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/cx;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/gmail/heagoo/apkeditor/cy;

    invoke-direct {v2, p0, p1}, Lcom/gmail/heagoo/apkeditor/cy;-><init>(Lcom/gmail/heagoo/apkeditor/cx;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    new-instance v1, Lcom/gmail/heagoo/apkeditor/cz;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/cz;-><init>(Lcom/gmail/heagoo/apkeditor/cx;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 6

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cx;->d:Lcom/gmail/heagoo/apkeditor/bv;

    invoke-virtual {p1, p3}, Lcom/gmail/heagoo/apkeditor/bv;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cx;->d:Lcom/gmail/heagoo/apkeditor/bv;

    invoke-virtual {p1, p3}, Lcom/gmail/heagoo/apkeditor/bv;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p4, p0, Lcom/gmail/heagoo/apkeditor/cx;->d:Lcom/gmail/heagoo/apkeditor/bv;

    invoke-virtual {p4}, Lcom/gmail/heagoo/apkeditor/bv;->b()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/gmail/heagoo/apkeditor/dg;

    invoke-direct {p5, p0, p1, p4, p3}, Lcom/gmail/heagoo/apkeditor/dg;-><init>(Lcom/gmail/heagoo/apkeditor/cx;Ljava/lang/String;Ljava/lang/String;I)V

    new-array p1, p2, [Ljava/lang/Object;

    invoke-virtual {p5, p1}, Lcom/gmail/heagoo/apkeditor/dg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6

    invoke-static {p4, p5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p4, p5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result p2

    new-instance p3, Lcom/gmail/heagoo/apkeditor/db;

    invoke-direct {p3, p0, p2}, Lcom/gmail/heagoo/apkeditor/db;-><init>(Lcom/gmail/heagoo/apkeditor/cx;I)V

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const/4 p1, 0x0

    return p1
.end method
