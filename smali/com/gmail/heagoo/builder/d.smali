.class public final Lcom/gmail/heagoo/builder/d;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/util/List;

.field private final c:Lcom/gmail/heagoo/common/m;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/gmail/heagoo/builder/e;

.field private f:I

.field private g:I

.field private h:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/gmail/heagoo/common/m;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/builder/d;->g:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/gmail/heagoo/builder/d;->h:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gmail/heagoo/builder/d;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/gmail/heagoo/builder/d;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/gmail/heagoo/builder/d;->c:Lcom/gmail/heagoo/common/m;

    const p1, 0x7f0a004b

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/builder/d;->setContentView(I)V

    const p1, 0x7f08008a

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/builder/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/gmail/heagoo/builder/d;->d:Landroid/widget/ListView;

    const p1, 0x7f080049

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/builder/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08005a

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/builder/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v0, p0, Lcom/gmail/heagoo/builder/d;->f:I

    invoke-direct {p0}, Lcom/gmail/heagoo/builder/d;->a()V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/builder/d;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/builder/d;->g:I

    return p0
.end method

.method private a()V
    .registers 6

    iget v0, p0, Lcom/gmail/heagoo/builder/d;->f:I

    iget-object v1, p0, Lcom/gmail/heagoo/builder/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/builder/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    new-instance v0, Lcom/gmail/heagoo/builder/e;

    iget-object v1, p0, Lcom/gmail/heagoo/builder/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/gmail/heagoo/builder/d;->b:Ljava/util/List;

    iget v4, p0, Lcom/gmail/heagoo/builder/d;->f:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/gmail/heagoo/builder/e;-><init>(Lcom/gmail/heagoo/builder/d;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/gmail/heagoo/builder/d;->e:Lcom/gmail/heagoo/builder/e;

    iget-object v0, p0, Lcom/gmail/heagoo/builder/d;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gmail/heagoo/builder/d;->e:Lcom/gmail/heagoo/builder/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/d;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080049

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/builder/d;->dismiss()V

    return-void

    :cond_0
    const v0, 0x7f08005a

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/builder/d;->b:Ljava/util/List;

    iget v0, p0, Lcom/gmail/heagoo/builder/d;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v0, p0, Lcom/gmail/heagoo/builder/d;->g:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/builder/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/gmail/heagoo/builder/d;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gmail/heagoo/builder/d;->f:I

    iget p1, p0, Lcom/gmail/heagoo/builder/d;->f:I

    iget-object v0, p0, Lcom/gmail/heagoo/builder/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-direct {p0}, Lcom/gmail/heagoo/builder/d;->a()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/builder/d;->c:Lcom/gmail/heagoo/common/m;

    iget-object v0, p0, Lcom/gmail/heagoo/builder/d;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/gmail/heagoo/common/m;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/builder/d;->dismiss()V

    :cond_2
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iput p3, p0, Lcom/gmail/heagoo/builder/d;->g:I

    iget-object p1, p0, Lcom/gmail/heagoo/builder/d;->e:Lcom/gmail/heagoo/builder/e;

    invoke-virtual {p1}, Lcom/gmail/heagoo/builder/e;->notifyDataSetChanged()V

    return-void
.end method
