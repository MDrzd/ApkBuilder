.class public final Lcom/gmail/heagoo/builder/f;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/EditText;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/EditText;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/EditText;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;

.field private m:I

.field private n:Landroid/widget/EditText;

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/EditText;

.field private q:Ljava/lang/String;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Lcom/gmail/heagoo/builder/o;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/builder/f;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    iput v0, p0, Lcom/gmail/heagoo/builder/f;->m:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0a0066

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f080170

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->c:Landroid/view/View;

    const v1, 0x7f080024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->d:Landroid/view/View;

    const v1, 0x7f080023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->e:Landroid/view/View;

    const v1, 0x7f08005e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->r:Landroid/widget/Button;

    const v1, 0x7f08005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->s:Landroid/widget/Button;

    const v1, 0x7f0800bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->f:Landroid/widget/EditText;

    const v1, 0x7f0800c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->h:Landroid/widget/EditText;

    const v1, 0x7f0800c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/gmail/heagoo/builder/f;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/gmail/heagoo/builder/f;->h:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-static {}, Lcom/gmail/heagoo/common/r;->b()Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/gmail/heagoo/builder/h;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/builder/h;-><init>(Lcom/gmail/heagoo/builder/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f080048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/builder/f;->a(Landroid/view/View;)V

    const v0, 0x7f0800b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/gmail/heagoo/builder/f;->n:Landroid/widget/EditText;

    const v0, 0x7f0800c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/gmail/heagoo/builder/f;->p:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->n:Landroid/widget/EditText;

    const-string v1, "MainActivity"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->p:Landroid/widget/EditText;

    const-string v1, "activity_main"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/gmail/heagoo/builder/f;->d()V

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/builder/f;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/builder/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/builder/f;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/builder/f;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    new-instance v1, Lcom/gmail/heagoo/builder/i;

    const v2, 0x7f0801de

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "app_empty_activity.zip"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/gmail/heagoo/builder/i;-><init>(Lcom/gmail/heagoo/builder/f;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    new-instance v1, Lcom/gmail/heagoo/builder/i;

    const v2, 0x7f0801fa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "app_setting_activity.zip"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/gmail/heagoo/builder/i;-><init>(Lcom/gmail/heagoo/builder/f;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    new-instance v1, Lcom/gmail/heagoo/builder/i;

    const v2, 0x7f0801e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "app_list_activity.zip"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/gmail/heagoo/builder/i;-><init>(Lcom/gmail/heagoo/builder/f;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    new-instance v1, Lcom/gmail/heagoo/builder/i;

    const v2, 0x7f0801e3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "app_flashlight.zip"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/gmail/heagoo/builder/i;-><init>(Lcom/gmail/heagoo/builder/f;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    new-instance v1, Lcom/gmail/heagoo/builder/i;

    const v2, 0x7f080208

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "app_web_wrapper.zip"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/gmail/heagoo/builder/i;-><init>(Lcom/gmail/heagoo/builder/f;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    new-instance v1, Lcom/gmail/heagoo/builder/i;

    const v2, 0x7f0801ea

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "app_live_wp.zip"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/gmail/heagoo/builder/i;-><init>(Lcom/gmail/heagoo/builder/f;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    new-instance v1, Lcom/gmail/heagoo/builder/i;

    const v2, 0x7f0801fb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v3, "app_sqlite_demo.zip"

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/gmail/heagoo/builder/i;-><init>(Lcom/gmail/heagoo/builder/f;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/builder/i;

    iget-object v0, v0, Lcom/gmail/heagoo/builder/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/gmail/heagoo/builder/f;->c()V

    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/builder/f;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/builder/f;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/builder/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/gmail/heagoo/builder/f;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/builder/f;->h:Landroid/widget/EditText;

    return-object p0
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/builder/i;

    iget v2, v1, Lcom/gmail/heagoo/builder/i;->a:I

    iget v3, p0, Lcom/gmail/heagoo/builder/f;->m:I

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/gmail/heagoo/builder/i;->b:Landroid/widget/TextView;

    const v2, -0xa6683c

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/gmail/heagoo/builder/i;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/gmail/heagoo/builder/f;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/builder/f;->j:Landroid/widget/EditText;

    return-object p0
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/gmail/heagoo/builder/f;->b:I

    const v1, 0x7f0d023f

    const v2, 0x7f0d01e3

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->r:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->s:Landroid/widget/Button;

    const v1, 0x7f0d0164

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->r:Landroid/widget/Button;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->s:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->r:Landroid/widget/Button;

    const/high16 v1, 0x1040000

    goto :goto_0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 9

    new-instance v0, Lcom/gmail/heagoo/builder/o;

    iget-object v1, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gmail/heagoo/builder/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gmail/heagoo/builder/f;->t:Lcom/gmail/heagoo/builder/o;

    const-string v0, "app_empty_activity.zip"

    iget-object v1, p0, Lcom/gmail/heagoo/builder/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/builder/i;

    iget v3, v2, Lcom/gmail/heagoo/builder/i;->a:I

    iget v4, p0, Lcom/gmail/heagoo/builder/f;->m:I

    if-ne v3, v4, :cond_0

    iget-object v0, v2, Lcom/gmail/heagoo/builder/i;->c:Ljava/lang/String;

    :cond_1
    move-object v5, v0

    iget-object v1, p0, Lcom/gmail/heagoo/builder/f;->t:Lcom/gmail/heagoo/builder/o;

    iget-object v2, p0, Lcom/gmail/heagoo/builder/f;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/gmail/heagoo/builder/f;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/builder/f;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/gmail/heagoo/builder/f;->o:Ljava/lang/String;

    iget-object v7, p0, Lcom/gmail/heagoo/builder/f;->q:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/gmail/heagoo/builder/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gmail/heagoo/builder/f;->u:Z

    return-void
.end method

.method public final b()V
    .registers 6

    iget-boolean v0, p0, Lcom/gmail/heagoo/builder/f;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0d0247

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/builder/f;->t:Lcom/gmail/heagoo/builder/o;

    invoke-virtual {v1}, Lcom/gmail/heagoo/builder/o;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "projectFilePath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/builder/f;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/.project"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/builder/f;->dismiss()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 13

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f08005a

    if-ne p1, v1, :cond_8

    iget p1, p0, Lcom/gmail/heagoo/builder/f;->b:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/builder/f;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/builder/f;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/builder/f;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/builder/f;->o:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/builder/f;->q:Ljava/lang/String;

    new-instance p1, Lcom/gmail/heagoo/apkeditor/ce;

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0d0248

    invoke-direct {p1, v0, p0, v1}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ce;->show()V

    return-void

    :cond_0
    :pswitch_1
    const/4 v1, 0x1

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v2, 0x7f0d0137

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->f:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->j:Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_1
    if-ge v3, v2, :cond_7

    aget-object v5, p1, v3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x0

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-lt v7, v8, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7a

    if-le v7, v8, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v4, 0x0

    :cond_6
    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-nez v4, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const v2, 0x7f0d019c

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_4
    if-eqz v1, :cond_d

    iget p1, p0, Lcom/gmail/heagoo/builder/f;->b:I

    add-int/2addr p1, v0

    goto :goto_5

    :cond_8
    const v1, 0x7f08005e

    if-ne p1, v1, :cond_a

    iget p1, p0, Lcom/gmail/heagoo/builder/f;->b:I

    if-lez p1, :cond_9

    iget p1, p0, Lcom/gmail/heagoo/builder/f;->b:I

    sub-int/2addr p1, v0

    :goto_5
    iput p1, p0, Lcom/gmail/heagoo/builder/f;->b:I

    invoke-direct {p0}, Lcom/gmail/heagoo/builder/f;->d()V

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lcom/gmail/heagoo/builder/f;->dismiss()V

    goto :goto_6

    :cond_a
    const v0, 0x7f080048

    if-ne p1, v0, :cond_b

    new-instance v3, Lcom/gmail/heagoo/builder/g;

    invoke-direct {v3, p0}, Lcom/gmail/heagoo/builder/g;-><init>(Lcom/gmail/heagoo/builder/f;)V

    iget-object p1, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0d00af

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance p1, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    iget-object v0, p0, Lcom/gmail/heagoo/builder/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "project_location"

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;-><init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->show()V

    goto :goto_6

    :cond_b
    const v0, 0x7f0801de

    if-eq p1, v0, :cond_c

    const v0, 0x7f0801fa

    if-eq p1, v0, :cond_c

    const v0, 0x7f0801e9

    if-eq p1, v0, :cond_c

    const v0, 0x7f0801e3

    if-eq p1, v0, :cond_c

    const v0, 0x7f080208

    if-eq p1, v0, :cond_c

    const v0, 0x7f0801ea

    if-eq p1, v0, :cond_c

    const v0, 0x7f0801fb

    if-ne p1, v0, :cond_d

    :cond_c
    iput p1, p0, Lcom/gmail/heagoo/builder/f;->m:I

    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/gmail/heagoo/builder/f;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
