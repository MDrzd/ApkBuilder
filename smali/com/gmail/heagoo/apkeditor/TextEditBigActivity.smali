.class public Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;
.super Lcom/gmail/heagoo/apkeditor/dr;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/gmail/heagoo/a;


# instance fields
.field private A:Landroid/widget/ToggleButton;

.field private B:Landroid/widget/ToggleButton;

.field private C:Landroid/widget/ImageView;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Landroid/widget/TextView;

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Landroid/view/View;

.field private K:I

.field private L:Z

.field private M:Lcom/gmail/heagoo/apkeditor/er;

.field private N:Ljava/lang/String;

.field private k:I

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/ViewAnimator;

.field private n:Landroid/widget/SlidingDrawer;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/gmail/heagoo/apkeditor/dr;-><init>(ZZ)V

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->D:Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->E:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->F:Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->L:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->N:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;I)I
    .registers 2

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->K:I

    return p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->G:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(III)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gmail/heagoo/apkeditor/er;->a(III)V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;Z)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;Lcom/gmail/heagoo/common/l;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Lcom/gmail/heagoo/common/l;)V

    return-void
.end method

.method private a(Lcom/gmail/heagoo/common/l;)V
    .registers 4

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ce;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/eh;

    invoke-direct {v1, p0, p1}, Lcom/gmail/heagoo/apkeditor/eh;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;Lcom/gmail/heagoo/common/l;)V

    const p1, 0x7f0d015f

    invoke-direct {v0, p0, v1, p1}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ce;->show()V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->L:Z

    return p1
.end method

.method private a(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->a()I

    move-result v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/er;->c()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b(II)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d01ec

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->J:Landroid/view/View;

    return-object p0
.end method

.method private b(II)Z
    .registers 8

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xa

    :cond_1
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->B:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->B:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    or-int/lit8 v1, v1, 0x10

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/er;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p2

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result p2

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(III)V

    return v4

    :cond_3
    add-int/2addr p1, v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-direct {p0, p1, v1, p2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    :cond_4
    return v0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;Z)Z
    .registers 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->I:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->H:Landroid/view/View;

    return-object p0
.end method

.method private d(I)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    new-instance p1, Lcom/gmail/heagoo/apkeditor/em;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/gmail/heagoo/apkeditor/em;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;B)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/em;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d026f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d026d

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ef;

    invoke-direct {v2, p0, p1}, Lcom/gmail/heagoo/apkeditor/ef;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0126

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ee;

    invoke-direct {v2, p0, p1}, Lcom/gmail/heagoo/apkeditor/ee;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic e(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Lcom/gmail/heagoo/apkeditor/er;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    return-object p0
.end method

.method private e()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->N:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->r:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->r:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method private e(I)V
    .registers 4

    const/16 v0, 0x28

    if-le p1, v0, :cond_0

    const/16 p1, 0x28

    :cond_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    const/4 p1, 0x4

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    const/4 v1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/gmail/heagoo/apkeditor/er;->a(IF)V

    return-void
.end method

.method static synthetic f(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->K:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    iget p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->K:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lcom/gmail/heagoo/apkeditor/er;->e(I)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->h()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->g()V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->C:Landroid/widget/ImageView;

    const v0, 0x7f0700aa

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic h(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->h()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->g()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->C:Landroid/widget/ImageView;

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->m:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method static synthetic i(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/widget/SlidingDrawer;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    return-object p0
.end method

.method static synthetic j(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 13

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    array-length v3, v0

    if-gt p2, v3, :cond_1

    goto :goto_0

    :cond_1
    array-length p2, v0

    :goto_0
    if-gt p1, p2, :cond_d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_1
    if-ge v4, p1, :cond_2

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, p2, 0x1

    :goto_2
    array-length v5, v0

    if-gt v4, v5, :cond_3

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0, v3}, Lcom/gmail/heagoo/apkeditor/er;->a(Ljava/util/List;)V

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    const p1, 0x7f0d01da

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    goto/16 :goto_c

    :cond_4
    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->i:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_d

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-gtz p1, :cond_5

    const/4 p1, 0x1

    :cond_5
    array-length v3, v0

    if-gt p2, v3, :cond_6

    goto :goto_3

    :cond_6
    array-length p2, v0

    :goto_3
    if-gt p1, p2, :cond_d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_4
    if-ge v4, p1, :cond_7

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    const-string v4, "#"

    invoke-static {v0, p1, p2, v4}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a([Ljava/lang/String;IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v5, p1

    :goto_5
    if-gt v5, p2, :cond_a

    add-int/lit8 v6, v5, -0x1

    aget-object v7, v0, v6

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v6

    invoke-virtual {v9, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    aget-object v6, v0, v6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    move v5, p1

    :goto_8
    if-gt v5, p2, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v5, -0x1

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v5, p2, 0x1

    :goto_9
    array-length v6, v0

    if-gt v5, v6, :cond_b

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v0, v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0, v3}, Lcom/gmail/heagoo/apkeditor/er;->a(Ljava/util/List;)V

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    if-eqz v4, :cond_c

    const p1, 0x7f0d01db

    :goto_a
    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_c
    const p1, 0x7f0d01d9

    goto :goto_a

    :goto_b
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    :goto_c
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_e

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {p1, v2}, Lcom/gmail/heagoo/neweditor/d;->a(Z)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d()V

    :cond_e
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .registers 4

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->N:Ljava/lang/String;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->x:Landroid/widget/ImageView;

    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Landroid/widget/ImageView;Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->x:Landroid/widget/ImageView;

    const/4 p2, 0x1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->f()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_2
    :goto_0
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/neweditor/d;->a(Z)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d()V

    return-void
.end method

.method public final b(I)V
    .registers 4

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->u:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/er;->e(I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method protected final c(I)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->f()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/er;->b()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/er;->c()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1
    return-void
.end method

.method protected final declared-synchronized d()V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v0

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->E:Z

    if-eq v1, v0, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->w:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Landroid/widget/ImageView;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->w:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Landroid/widget/ImageView;Z)V

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d026f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d026d

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ej;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/ej;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0126

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ei;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/ei;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 15

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f08013c

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d(I)V

    return-void

    :cond_0
    const v2, 0x7f08013e

    if-ne v0, v2, :cond_1

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d(I)V

    return-void

    :cond_1
    const v2, 0x7f080151

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Landroid/view/View;)V

    return-void

    :cond_2
    const v2, 0x7f08015b

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v2, :cond_6

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->animateOpen()V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1, v3}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->N:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p1, ""

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_6
    const v2, 0x7f0800e1

    if-ne v0, v2, :cond_7

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Z)Z

    return-void

    :cond_7
    const v2, 0x7f080178

    if-ne v0, v2, :cond_9

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/er;->a()I

    move-result v2

    if-ltz v2, :cond_8

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/er;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/er;->c()I

    move-result v4

    if-eq v3, v4, :cond_8

    invoke-virtual {p1, v2}, Lcom/gmail/heagoo/apkeditor/er;->f(I)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1, v3, v4, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_8
    invoke-direct {p0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Z)Z

    return-void

    :cond_9
    const v2, 0x7f080177

    if-ne v0, v2, :cond_11

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->A:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 v3, 0xa

    :cond_a
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->B:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->B:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_b

    or-int/lit8 v3, v3, 0x10

    :cond_b
    :try_start_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->e()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_f

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    new-instance v11, Lcom/gmail/heagoo/apkeditor/el;

    invoke-direct {v11, v9, v10, v4}, Lcom/gmail/heagoo/apkeditor/el;-><init>(IIB)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v10

    goto :goto_3

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/gmail/heagoo/apkeditor/el;

    iget v12, v11, Lcom/gmail/heagoo/apkeditor/el;->a:I

    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v11, Lcom/gmail/heagoo/apkeditor/el;->b:I

    goto :goto_4

    :cond_d
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_f
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/er;->i()V

    if-lez v6, :cond_10

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0260

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d01ec

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    :goto_5
    return-void

    :cond_11
    const v2, 0x7f0800e7

    if-ne v0, v2, :cond_13

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->u:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    const-string v0, "\n"

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/er;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/apkeditor/er;->f(I)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_7

    :cond_12
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b(I)V

    return-void

    :cond_13
    const v2, 0x7f080189

    if-ne v0, v2, :cond_14

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Lcom/gmail/heagoo/common/l;)V

    return-void

    :cond_14
    const v2, 0x7f08009d

    if-ne v0, v2, :cond_17

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->N:Ljava/lang/String;

    if-eqz p1, :cond_16

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0, p1}, Lcom/gmail/heagoo/common/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const p1, 0x7f0d028e

    goto :goto_6

    :cond_15
    const v0, 0x7f0d00f8

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_16
    return-void

    :cond_17
    const v1, 0x7f080165

    if-ne v0, v1, :cond_1a

    invoke-static {p0}, Lcom/gmail/heagoo/common/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    const p1, 0x7f0d00b6

    :goto_6
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :cond_18
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/er;->f()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/er;->b()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/er;->c()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_19
    return-void

    :cond_1a
    const v1, 0x7f080139

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b(Landroid/view/View;)V

    :catch_1
    :cond_1b
    :goto_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0800d8

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->G:Landroid/widget/TextView;

    const p1, 0x7f08013e

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->H:Landroid/view/View;

    const p1, 0x7f08013c

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->I:Landroid/view/View;

    const p1, 0x7f080139

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->J:Landroid/view/View;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->H:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->I:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->J:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080082

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->l:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/gmail/heagoo/apkeditor/er;

    const v0, 0x7f0801c8

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-direct {p1, p0, v1}, Lcom/gmail/heagoo/apkeditor/er;-><init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;)V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    const p1, 0x7f080190

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewAnimator;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->m:Landroid/widget/ViewAnimator;

    const p1, 0x7f0801a8

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SlidingDrawer;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    const p1, 0x7f0800e2

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    const p1, 0x7f080179

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->p:Landroid/widget/EditText;

    const p1, 0x7f0800e1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->q:Landroid/widget/ImageButton;

    const p1, 0x7f080178

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->r:Landroid/widget/ImageButton;

    const p1, 0x7f080177

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->s:Landroid/widget/ImageButton;

    const p1, 0x7f08015b

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->v:Landroid/widget/ImageView;

    const p1, 0x7f080085

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->A:Landroid/widget/ToggleButton;

    const p1, 0x7f080086

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->B:Landroid/widget/ToggleButton;

    const p1, 0x7f080189

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->w:Landroid/widget/ImageView;

    const p1, 0x7f08009d

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->x:Landroid/widget/ImageView;

    const p1, 0x7f080165

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->y:Landroid/widget/ImageView;

    const p1, 0x7f080151

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->z:Landroid/widget/ImageView;

    const p1, 0x7f0800e7

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->t:Landroid/widget/ImageButton;

    const p1, 0x7f08011d

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->u:Landroid/widget/EditText;

    const p1, 0x7f080162

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->C:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->x:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Landroid/widget/ImageView;Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    const v2, 0xb0001

    invoke-virtual {p1, v2}, Lcom/gmail/heagoo/apkeditor/er;->a(I)V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->k:I

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->k:I

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->r:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->s:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->t:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v2, 0x50

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->r:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->s:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance p1, Lcom/gmail/heagoo/common/j;

    invoke-direct {p1}, Lcom/gmail/heagoo/common/j;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gmail/heagoo/apkeditor/er;->b(I)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gmail/heagoo/apkeditor/er;->c(I)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    rsub-int p1, p1, 0xff

    const/16 v5, 0x80

    invoke-static {v5, v3, v4, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/gmail/heagoo/apkeditor/er;->d(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {p1, p0}, Lcom/gmail/heagoo/apkeditor/er;->a(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ea;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/ea;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->n:Landroid/widget/SlidingDrawer;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/eb;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/eb;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    invoke-virtual {p1, p0}, Lcom/gmail/heagoo/apkeditor/er;->a(Lcom/gmail/heagoo/a;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->o:Landroid/widget/EditText;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ec;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/ec;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->p:Landroid/widget/EditText;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ed;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/ed;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->a(Lcom/gmail/heagoo/neweditor/r;)V

    new-instance p1, Lcom/gmail/heagoo/apkeditor/em;

    invoke-direct {p1, p0, v1}, Lcom/gmail/heagoo/apkeditor/em;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;B)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/em;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/gmail/heagoo/apkeditor/dr;->onResume()V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->b(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->k:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->k:I

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e(I)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d()V

    :cond_0
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/er;->a(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->M:Lcom/gmail/heagoo/apkeditor/er;

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "curFileIndex"

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "modifySaved"

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "docChanged"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tmp"

    invoke-static {p0, v1}, Lcom/gmail/heagoo/common/ae;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v1, v0}, Lcom/gmail/heagoo/neweditor/d;->a(Ljava/lang/String;)V

    const-string v1, "unsavedFilePath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/gmail/heagoo/apkeditor/dr;->onStop()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
