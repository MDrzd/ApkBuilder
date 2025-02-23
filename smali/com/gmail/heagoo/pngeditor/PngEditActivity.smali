.class public Lcom/gmail/heagoo/pngeditor/PngEditActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/b/a/h;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/b/a/e;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/SeekBar;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/SeekBar;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Bitmap;

.field private u:Z

.field private v:Lcom/gmail/heagoo/pngeditor/a;

.field private w:Landroid/widget/PopupWindow;

.field private x:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/pngeditor/PngEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->s:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/pngeditor/PngEditActivity;Lcom/b/a/e;)Lcom/b/a/e;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->h:Lcom/b/a/e;

    return-object p1
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    invoke-interface {v0}, Lcom/gmail/heagoo/pngeditor/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0189

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/gmail/heagoo/pngeditor/d;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/pngeditor/d;-><init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c()V

    return-void
.end method

.method private a(I)V
    .registers 7

    const/4 v0, 0x0

    const v1, 0x7f0a00d3

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0800d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0800bd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0194

    invoke-virtual {p1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    new-instance v4, Lcom/gmail/heagoo/pngeditor/g;

    invoke-direct {v4, p0, v2, v3}, Lcom/gmail/heagoo/pngeditor/g;-><init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/view/View;IIII)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b()V

    return-void
.end method

.method private a(Lcom/gmail/heagoo/pngeditor/a;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->i:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->g:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->q:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->r:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->s:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->s:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->s:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gmail/heagoo/common/p;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d018c

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const v0, 0x7f0d018a

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->h:Lcom/b/a/e;

    return-object p0
.end method

.method private c()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->j:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->i:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->w:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic f(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->x:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic g(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(F)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->d:Landroid/widget/TextView;

    const-string v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->u:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d018b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d026d

    new-instance v2, Lcom/gmail/heagoo/pngeditor/c;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/pngeditor/c;-><init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0124

    new-instance v2, Lcom/gmail/heagoo/pngeditor/b;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/pngeditor/b;-><init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080060

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/gmail/heagoo/pngeditor/a/a;

    invoke-direct {p1}, Lcom/gmail/heagoo/pngeditor/a/a;-><init>()V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->j:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(Lcom/gmail/heagoo/pngeditor/a;Landroid/view/View;)V

    return-void

    :cond_0
    const v2, 0x7f080061

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->n:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    const-string v1, "tolerance"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gmail/heagoo/pngeditor/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->s:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/gmail/heagoo/pngeditor/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->h:Lcom/b/a/e;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->h:Lcom/b/a/e;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/b/a/e;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    const v2, 0x7f08004b

    const v3, 0x7f0d01e7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_4

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    invoke-interface {p1}, Lcom/gmail/heagoo/pngeditor/a;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->s:Landroid/graphics/Bitmap;

    iput-boolean v5, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->u:Z

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c()V

    return-void

    :cond_3
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    const v2, 0x7f080066

    if-ne v0, v2, :cond_6

    iget-boolean p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->u:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b()V

    return-void

    :cond_5
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    const v2, 0x7f080049

    if-ne v0, v2, :cond_7

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a()V

    return-void

    :cond_7
    const v2, 0x7f080065

    if-ne v0, v2, :cond_8

    new-instance p1, Lcom/gmail/heagoo/pngeditor/a/b;

    invoke-direct {p1}, Lcom/gmail/heagoo/pngeditor/a/b;-><init>()V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->k:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(Lcom/gmail/heagoo/pngeditor/a;Landroid/view/View;)V

    return-void

    :cond_8
    const v2, 0x7f080051

    if-ne v0, v2, :cond_a

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    const-string v3, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lcom/gmail/heagoo/pngeditor/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    const-string v2, "height"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/gmail/heagoo/pngeditor/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    const-string v0, "zooming"

    xor-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/gmail/heagoo/pngeditor/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->s:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/gmail/heagoo/pngeditor/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->h:Lcom/b/a/e;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->h:Lcom/b/a/e;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/b/a/e;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    return-void

    :cond_a
    const v2, 0x7f080070

    if-ne v0, v2, :cond_b

    new-instance p1, Lcom/gmail/heagoo/pngeditor/a/c;

    invoke-direct {p1}, Lcom/gmail/heagoo/pngeditor/a/c;-><init>()V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->l:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(Lcom/gmail/heagoo/pngeditor/a;Landroid/view/View;)V

    return-void

    :cond_b
    const v2, 0x7f080071

    if-ne v0, v2, :cond_d

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->p:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    mul-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->p:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    const-string v1, "transparency"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gmail/heagoo/pngeditor/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->v:Lcom/gmail/heagoo/pngeditor/a;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->s:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/gmail/heagoo/pngeditor/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->h:Lcom/b/a/e;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->h:Lcom/b/a/e;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/b/a/e;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_c
    return-void

    :cond_d
    const v2, 0x7f080215

    if-ne v0, v2, :cond_e

    invoke-direct {p0, v4}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(I)V

    return-void

    :cond_e
    const v2, 0x7f0800ef

    if-ne v0, v2, :cond_f

    invoke-direct {p0, v5}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(I)V

    return-void

    :cond_f
    const v2, 0x7f0801f9

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->w:Landroid/widget/PopupWindow;

    if-nez v0, :cond_10

    const v0, 0x7f0a00d5

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/gmail/heagoo/pngeditor/e;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/pngeditor/e;-><init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V

    const v3, 0x7f08006a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080067

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080068

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080069

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static {p0}, Lcom/gmail/heagoo/common/g;->a(Landroid/app/Activity;)I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->w:Landroid/widget/PopupWindow;

    :cond_10
    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->w:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->w:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->w:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :catch_0
    :cond_11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a00d1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "filePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b:Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b:Ljava/lang/String;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a00d0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v3, 0x7f07012a

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    const p1, 0x7f0801e0

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0801f9

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080066

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->f:Landroid/view/View;

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->g:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08004b

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080049

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801cf

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->i:Landroid/view/View;

    const p1, 0x7f080174

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->j:Landroid/view/View;

    const p1, 0x7f08017f

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->k:Landroid/view/View;

    const p1, 0x7f0801d8

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->l:Landroid/view/View;

    const p1, 0x7f080203

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->m:Landroid/widget/TextView;

    const p1, 0x7f08019e

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->n:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->n:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f080204

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->o:Landroid/widget/TextView;

    const p1, 0x7f08019f

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->p:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->p:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f08020a

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->q:Landroid/widget/TextView;

    const p1, 0x7f0801e6

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->r:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    const p1, 0x7f080215

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800ef

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080060

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080061

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080065

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080051

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080070

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080071

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/String;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v0, p1, v2

    iget v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a:I

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    new-instance p1, Lcom/gmail/heagoo/pngeditor/h;

    invoke-direct {p1, p0}, Lcom/gmail/heagoo/pngeditor/h;-><init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/pngeditor/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->onBackPressed()V

    return v1

    :cond_0
    const v2, 0x7f080007

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->x:Landroid/widget/PopupWindow;

    if-nez p1, :cond_1

    const p1, 0x7f0a00d2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/gmail/heagoo/pngeditor/f;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/pngeditor/f;-><init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V

    const v2, 0x7f08004a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static {p0}, Lcom/gmail/heagoo/common/g;->a(Landroid/app/Activity;)I

    move-result v3

    invoke-direct {v2, p1, v3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->x:Landroid/widget/PopupWindow;

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->x:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->x:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->x:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return v1

    :cond_2
    const v2, 0x7f080015

    if-ne v0, v2, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gmail/heagoo/pngeditor/HelpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_3
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int v2, v2, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    div-int/2addr v2, p1

    add-int/2addr v0, v2

    const/4 p1, 0x0

    const v1, 0x7f08019e

    if-ne p3, v1, :cond_0

    iget-object p3, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->m:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p2, p1, p1}, Landroid/widget/TextView;->measure(II)V

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->m:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr v0, p3

    invoke-static {p2, v0, p1, p1, p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(Landroid/view/View;IIII)V

    return-void

    :cond_0
    const v1, 0x7f08019f

    if-ne p3, v1, :cond_1

    iget-object p3, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->o:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p2, p1, p1}, Landroid/widget/TextView;->measure(II)V

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->o:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    const v0, 0x7f08019d

    if-ne p3, v0, :cond_4

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    const/16 p2, 0xff

    if-le p1, p2, :cond_3

    const/16 p1, 0xff

    :cond_3
    sub-int/2addr p2, p1

    const/high16 p1, -0x1000000

    shl-int/lit8 p3, p2, 0x10

    or-int/2addr p1, p3

    shl-int/lit8 p3, p2, 0x8

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    const p2, 0x7f08015f

    invoke-virtual {p0, p2}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
