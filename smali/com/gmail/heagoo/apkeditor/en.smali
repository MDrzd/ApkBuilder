.class public final Lcom/gmail/heagoo/apkeditor/en;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:I

.field private e:F

.field private f:I

.field private g:Z

.field private h:Lcom/gmail/heagoo/neweditor/d;

.field private i:Landroid/text/TextWatcher;

.field private j:Ljava/lang/ref/WeakReference;

.field private k:Lcom/gmail/heagoo/apkeditor/ep;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/en;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/en;->g:Z

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ep;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/ep;-><init>(Lcom/gmail/heagoo/apkeditor/en;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/en;->k:Lcom/gmail/heagoo/apkeditor/ep;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/en;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/en;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/en;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    return-object p0
.end method

.method private static b(I)I
    .registers 3

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-lt p0, v1, :cond_0

    div-int/lit8 p0, p0, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/en;)Landroid/text/TextWatcher;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/en;->i:Landroid/text/TextWatcher;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/en;->f:I

    return-void
.end method

.method public final a(IF)V
    .registers 3

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/en;->d:I

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/en;->e:F

    return-void
.end method

.method public final a(Landroid/text/TextWatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/en;->i:Landroid/text/TextWatcher;

    return-void
.end method

.method public final a(Lcom/gmail/heagoo/a;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/en;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/d;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/en;->h:Lcom/gmail/heagoo/neweditor/d;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/en;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->c()V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/en;->g:Z

    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const p3, 0x7f0801c1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/en;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a00a4

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/gmail/heagoo/apkeditor/eq;

    invoke-direct {v0}, Lcom/gmail/heagoo/apkeditor/eq;-><init>()V

    const v1, 0x7f080120

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/eq;

    :goto_0
    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    check-cast v1, Lcom/gmail/heagoo/apkeditor/eo;

    invoke-virtual {v2, v1}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    new-instance v1, Lcom/gmail/heagoo/apkeditor/eo;

    invoke-direct {v1, p0, p1}, Lcom/gmail/heagoo/apkeditor/eo;-><init>(Lcom/gmail/heagoo/apkeditor/en;I)V

    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    invoke-virtual {v2, v1}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    invoke-virtual {v2, v1}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/en;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->a(Ljava/lang/ref/WeakReference;)V

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/en;->b(I)I

    move-result v2

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/en;->b(I)I

    move-result v3

    if-ge v3, v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "0000000"

    goto :goto_1

    :pswitch_0
    const-string v2, "000000"

    goto :goto_1

    :pswitch_1
    const-string v2, "00000"

    goto :goto_1

    :pswitch_2
    const-string v2, "0000"

    goto :goto_1

    :pswitch_3
    const-string v2, "000"

    goto :goto_1

    :pswitch_4
    const-string v2, "00"

    goto :goto_1

    :pswitch_5
    const-string v2, "0"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-boolean v2, p0, Lcom/gmail/heagoo/apkeditor/en;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/eq;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/eq;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/gmail/heagoo/apkeditor/en;->f:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->a:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    iget v2, p0, Lcom/gmail/heagoo/apkeditor/en;->f:I

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->setTextColor(I)V

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/en;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/en;->e:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/gmail/heagoo/apkeditor/en;->d:I

    iget v4, p0, Lcom/gmail/heagoo/apkeditor/en;->e:F

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    iget v2, p0, Lcom/gmail/heagoo/apkeditor/en;->d:I

    iget v4, p0, Lcom/gmail/heagoo/apkeditor/en;->e:F

    invoke-virtual {v1, v2, v4}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->setTextSize(IF)V

    :cond_4
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/en;->h:Lcom/gmail/heagoo/neweditor/d;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/en;->h:Lcom/gmail/heagoo/neweditor/d;

    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/widget/EditText;)V

    :cond_5
    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->setTag(ILjava/lang/Object;)V

    iget-object p3, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/en;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/en;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3, v1, v2}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->a(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    iget-object p3, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    invoke-virtual {p3}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->a()V

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/en;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->d()I

    move-result v1

    if-ne v1, p1, :cond_6

    iget-object p1, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    invoke-virtual {p3}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->e()I

    move-result v1

    invoke-virtual {p3}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->f()I

    move-result p3

    invoke-virtual {p1, v1, p3}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->setSelection(II)V

    iget-object p1, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;->requestFocus()Z

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/en;->k:Lcom/gmail/heagoo/apkeditor/ep;

    iget-object p3, v0, Lcom/gmail/heagoo/apkeditor/eq;->b:Lcom/gmail/heagoo/apkeditor/ui/EditTextRememberCursor;

    iput-object p3, p1, Lcom/gmail/heagoo/apkeditor/ep;->a:Landroid/view/View;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/en;->k:Lcom/gmail/heagoo/apkeditor/ep;

    invoke-virtual {p1, v3}, Lcom/gmail/heagoo/apkeditor/ep;->removeMessages(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/en;->k:Lcom/gmail/heagoo/apkeditor/ep;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v3, v0, v1}, Lcom/gmail/heagoo/apkeditor/ep;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
