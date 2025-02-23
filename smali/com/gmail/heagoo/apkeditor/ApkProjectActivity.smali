.class public Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;
.super Lcom/gmail/heagoo/apkeditor/l;


# instance fields
.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Lcom/gmail/heagoo/apkeditor/ai;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/l;-><init>()V

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ai;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/ai;-><init>(Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->y:Lcom/gmail/heagoo/apkeditor/ai;

    return-void
.end method

.method private a(III)Landroid/view/View;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->h:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0a00b4

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0a00b6

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a00b5

    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->z:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move p2, p1

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f080148

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->y:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/view/View;Z)V
    .registers 5

    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080148

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ci;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v2, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/common/c;

    iget-object v0, v0, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gmail/heagoo/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/l;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->z:Z

    return p0
.end method

.method private f()Landroid/view/View;
    .registers 5

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->z:Z

    if-eqz v1, :cond_0

    const v1, -0x7f7f80

    goto :goto_0

    :cond_0
    const v1, -0x1c1c1d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/l;->a(Ljava/util/Set;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v3, v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/common/c;

    iget-boolean p1, p1, Lcom/gmail/heagoo/common/c;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->r:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->r:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(Landroid/view/View;Z)V

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->v:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->r:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->v:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public final d()V
    .registers 3

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->f:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->f:Z

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->z:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->f:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070138

    goto :goto_0

    :cond_0
    const v0, 0x7f07013a

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->f:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070137

    goto :goto_0

    :cond_2
    const v0, 0x7f070139

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final e()V
    .registers 3

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->g:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->g:Z

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->z:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->g:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0700c4

    goto :goto_0

    :cond_0
    const v0, 0x7f0700c2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->g:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0700c3

    goto :goto_0

    :cond_2
    const v0, 0x7f0700c1

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/l;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->h:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->z:Z

    const p1, 0x7f080136

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->k:Landroid/view/View;

    const p1, 0x7f080132

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->l:Landroid/view/View;

    const p1, 0x7f080145

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->m:Landroid/view/View;

    const p1, 0x7f080129

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->n:Landroid/view/View;

    const p1, 0x7f08012a

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->o:Landroid/view/View;

    const p1, 0x7f080144

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->p:Landroid/view/View;

    const p1, 0x7f08012d

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->q:Landroid/view/View;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->y:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->y:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->y:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->y:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->y:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->y:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->y:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08017c

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    const p1, 0x7f080152

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->j:Landroid/widget/LinearLayout;

    const p1, 0x7f0d01f1

    const v0, 0x7f0700e7

    invoke-direct {p0, v0, v0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(III)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->r:Landroid/view/View;

    const p1, 0x7f0700e3

    const v0, 0x7f0700ee

    const v1, 0x7f0d01c6

    invoke-direct {p0, p1, v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(III)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->u:Landroid/view/View;

    const p1, 0x7f0700f4

    const v0, 0x7f0700f7

    const v2, 0x7f0d0278

    invoke-direct {p0, p1, v0, v2}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(III)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->t:Landroid/view/View;

    const p1, 0x7f0700c9

    const v0, 0x7f0700ca

    const v2, 0x7f0d010e

    invoke-direct {p0, p1, v0, v2}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(III)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->s:Landroid/view/View;

    const p1, 0x7f0700cb

    const v0, 0x7f0700cc

    const v2, 0x7f0d0112

    invoke-direct {p0, p1, v0, v2}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(III)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->v:Landroid/view/View;

    const p1, 0x7f0700e4

    invoke-direct {p0, p1, p1, v1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(III)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->w:Landroid/view/View;

    const/high16 p1, 0x1040000

    const v0, 0x7f0700c7

    invoke-direct {p0, v0, v0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(III)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->x:Landroid/view/View;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/gmail/heagoo/apkeditor/l;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/gmail/heagoo/apkeditor/l;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/gmail/heagoo/apkeditor/l;->onResume()V

    return-void
.end method
