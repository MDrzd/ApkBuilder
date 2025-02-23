.class public Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;
.super Lcom/gmail/heagoo/apkeditor/dr;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/gmail/heagoo/neweditor/af;


# static fields
.field private static n:I = 0x12c

.field private static o:I = 0x12c

.field private static p:I = 0x190

.field private static q:I = 0x64


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Landroid/widget/EditText;

.field private C:Landroid/widget/HorizontalScrollView;

.field private D:Landroid/view/View;

.field private E:Lcom/gmail/heagoo/neweditor/ObScrollView;

.field private F:Landroid/widget/ViewAnimator;

.field private G:Landroid/widget/SlidingDrawer;

.field private H:Landroid/widget/EditText;

.field private I:Landroid/widget/EditText;

.field private J:Landroid/widget/ImageButton;

.field private K:Landroid/widget/ImageButton;

.field private L:Landroid/widget/ImageButton;

.field private M:Landroid/widget/ImageButton;

.field private N:Landroid/widget/EditText;

.field private O:Landroid/widget/ImageView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/widget/ToggleButton;

.field private U:Landroid/widget/ToggleButton;

.field private V:Landroid/widget/LinearLayout;

.field private W:Landroid/widget/ImageView;

.field private X:Landroid/widget/ScrollView;

.field private Y:Lcom/gmail/heagoo/apkeditor/fj;

.field private Z:Z

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/view/View;

.field private ag:Landroid/view/View;

.field private ah:Landroid/view/View;

.field private ai:I

.field private aj:Z

.field private ak:Z

.field k:Lcom/gmail/heagoo/apkeditor/fl;

.field protected l:Lcom/gmail/heagoo/neweditor/ObEditText;

.field public m:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/os/Handler;

.field private y:Lcom/gmail/heagoo/apkeditor/fh;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/gmail/heagoo/apkeditor/dr;-><init>(ZZ)V

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->r:Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->s:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->t:I

    iput v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->u:I

    const/16 v2, 0x14

    iput v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->w:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->x:Landroid/os/Handler;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/fl;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/fl;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->k:Lcom/gmail/heagoo/apkeditor/fl;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/fh;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/fh;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->y:Lcom/gmail/heagoo/apkeditor/fh;

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Z:Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ab:Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ac:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ad:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->aj:Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ak:Z

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;I)I
    .registers 2

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->u:I

    return p1
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

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Lcom/gmail/heagoo/common/l;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/common/l;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;ZI)V
    .registers 7

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->aa:I

    if-eq p2, v0, :cond_4

    :cond_0
    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Z:Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string p1, ""

    :goto_0
    if-ge v2, p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "9"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->aa:I

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->aa:I

    :goto_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestLayout()V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method private a(Lcom/gmail/heagoo/common/l;)V
    .registers 4

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ce;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/ff;

    invoke-direct {v1, p0, p1}, Lcom/gmail/heagoo/apkeditor/ff;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Lcom/gmail/heagoo/common/l;)V

    const p1, 0x7f0d015f

    invoke-direct {v0, p0, v1, p1}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ce;->show()V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Z:Z

    return p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;I)I
    .registers 2

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->t:I

    return p1
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->aj:Z

    return p1
.end method

.method private b(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

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
    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->f()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->requestFocus()Z

    return v2

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v3}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v3

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v4, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(I)V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2, v0, v3}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(II)V

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d01ec

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;I)I
    .registers 2

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ai:I

    return p1
.end method

.method private c(Z)V
    .registers 5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->W:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    :goto_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setMaxWidth(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->aj:Z

    return p0
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ak:Z

    return p1
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->u:I

    return p0
.end method

.method private d(I)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e:I

    new-instance p1, Lcom/gmail/heagoo/apkeditor/fk;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/gmail/heagoo/apkeditor/fk;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;B)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/fk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d026f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d026d

    new-instance v2, Lcom/gmail/heagoo/apkeditor/fd;

    invoke-direct {v2, p0, p1}, Lcom/gmail/heagoo/apkeditor/fd;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0126

    new-instance v2, Lcom/gmail/heagoo/apkeditor/fc;

    invoke-direct {v2, p0, p1}, Lcom/gmail/heagoo/apkeditor/fc;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Z)Z
    .registers 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->t:I

    return p0
.end method

.method private e()V
    .registers 4

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
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
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    int-to-float p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->aa:I

    return-void
.end method

.method private f()Z
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->T:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->U:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->U:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(II)V

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method static synthetic f(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->s:Z

    return p0
.end method

.method static synthetic g(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->w:I

    return p0
.end method

.method private g()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->T:Landroid/widget/ToggleButton;

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

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->K:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->L:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->K:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->L:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    const-string v0, "values"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic h(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ae:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ah:Landroid/view/View;

    return-object p0
.end method

.method static synthetic j(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ag:Landroid/view/View;

    return-object p0
.end method

.method static synthetic k(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->af:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Lcom/gmail/heagoo/apkeditor/fj;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Y:Lcom/gmail/heagoo/apkeditor/fj;

    return-object p0
.end method

.method static synthetic m(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic n(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->c(Z)V

    invoke-virtual {p0, v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Z)V

    :cond_0
    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->W:Landroid/widget/ImageView;

    const v0, 0x7f0700aa

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic o(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->c(Z)V

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->W:Landroid/widget/ImageView;

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->F:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method static synthetic p(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/widget/SlidingDrawer;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    return-object p0
.end method

.method static synthetic q(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->g()V

    return-void
.end method

.method static synthetic r(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 3

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 14

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p1, :cond_2

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, p1

    move v5, v4

    :goto_2
    if-gt v3, p2, :cond_3

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v3, ""

    invoke-interface {v0, v4, v5, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    const p1, 0x7f0d01da

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    goto/16 :goto_a

    :cond_4
    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->i:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_d

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_4
    if-ge v4, p1, :cond_7

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    move v4, p1

    move v6, v5

    :goto_5
    if-gt v4, p2, :cond_8

    add-int/lit8 v7, v4, -0x1

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    const-string v4, "#"

    invoke-static {v0, p1, p2, v4}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a([Ljava/lang/String;IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v7, p1

    :goto_6
    if-gt v7, p2, :cond_b

    add-int/lit8 v8, v7, -0x1

    aget-object v9, v0, v8

    const/16 v10, 0x23

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_9

    aget-object v10, v0, v8

    invoke-virtual {v10, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    aget-object v8, v0, v8

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    move v7, p1

    :goto_7
    if-gt v7, p2, :cond_b

    const-string v8, "#"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v7, -0x1

    aget-object v8, v0, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v6, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    if-eqz v4, :cond_c

    const p1, 0x7f0d01db

    :goto_8
    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_c
    const p1, 0x7f0d01d9

    goto :goto_8

    :goto_9
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    :goto_a
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_e

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {p1, v2}, Lcom/gmail/heagoo/neweditor/d;->a(Z)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d()V

    :cond_e
    return-void
.end method

.method protected final a(IIZ)V
    .registers 6

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->r:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->u:I

    if-ge p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->u:I

    :cond_1
    iget p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->t:I

    if-eq p1, v1, :cond_2

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->t:I

    if-le p2, p1, :cond_3

    :cond_2
    iput p2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->t:I

    :cond_3
    iput-boolean p3, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->s:Z

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->x:Landroid/os/Handler;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->y:Lcom/gmail/heagoo/apkeditor/fh;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->x:Landroid/os/Handler;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->y:Lcom/gmail/heagoo/apkeditor/fh;

    sget p3, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->p:I

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->x:Landroid/os/Handler;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->y:Lcom/gmail/heagoo/apkeditor/fh;

    sget p3, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->q:I

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ltz p2, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method protected final a(Z)V
    .registers 7

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ai:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ai:I

    array-length v2, v0

    if-le v1, v2, :cond_0

    array-length v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ai:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0, v3}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->requestFocus()Z

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ai:I

    :cond_2
    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->k:Lcom/gmail/heagoo/apkeditor/fl;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->x:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->k:Lcom/gmail/heagoo/apkeditor/fl;

    sget v1, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->o:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->x:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->k:Lcom/gmail/heagoo/apkeditor/fl;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->C:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->m:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->C:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_5
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineCount()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->m:I

    return-void
.end method

.method public final b(I)V
    .registers 6

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length p1, v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->N:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1, v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->requestFocus()Z

    :cond_2
    return-void
.end method

.method public final b(II)V
    .registers 3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Q:Landroid/widget/ImageView;

    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Landroid/widget/ImageView;Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Q:Landroid/widget/ImageView;

    const/4 p2, 0x1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->g()V

    :cond_1
    return-void
.end method

.method protected final c(I)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected final declared-synchronized d()V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v0

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ac:Z

    if-eq v1, v0, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->P:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Landroid/widget/ImageView;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->P:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Landroid/widget/ImageView;Z)V

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ac:Z
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

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d026f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d026d

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ev;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/ev;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0126

    new-instance v2, Lcom/gmail/heagoo/apkeditor/eu;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/eu;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

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
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f08013c

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d(I)V

    return-void

    :cond_0
    const v2, 0x7f08013e

    if-ne v0, v2, :cond_1

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d(I)V

    return-void

    :cond_1
    const v2, 0x7f080151

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Landroid/view/View;)V

    return-void

    :cond_2
    const v2, 0x7f08015b

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v2, :cond_6

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->animateOpen()V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1, v3}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->requestFocus()Z

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p1, ""

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_6
    const v2, 0x7f0800e1

    if-ne v0, v2, :cond_7

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Z)Z

    return-void

    :cond_7
    const v2, 0x7f080178

    if-ne v0, v2, :cond_8

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->I:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Z)Z

    return-void

    :cond_8
    const v2, 0x7f080177

    if-ne v0, v2, :cond_e

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->T:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v3, 0xa

    :cond_9
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->U:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->U:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_a

    or-int/lit8 v3, v3, 0x10

    :cond_a
    :try_start_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    new-instance v5, Lcom/gmail/heagoo/apkeditor/fg;

    invoke-direct {v5, v2, v3, v4}, Lcom/gmail/heagoo/apkeditor/fg;-><init>(IIB)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_2

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->I:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gmail/heagoo/apkeditor/fg;

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v6}, Lcom/gmail/heagoo/neweditor/ObEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    iget v7, v5, Lcom/gmail/heagoo/apkeditor/fg;->a:I

    add-int/2addr v7, v3

    iget v8, v5, Lcom/gmail/heagoo/apkeditor/fg;->b:I

    add-int/2addr v8, v3

    invoke-interface {v6, v7, v8, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, v5, Lcom/gmail/heagoo/apkeditor/fg;->b:I

    iget v5, v5, Lcom/gmail/heagoo/apkeditor/fg;->a:I

    sub-int/2addr v7, v5

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0d0260

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d01ec

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    :goto_4
    return-void

    :cond_e
    const v2, 0x7f0800e7

    if-ne v0, v2, :cond_10

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->N:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    const-string v1, "\n"

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->requestFocus()Z

    goto/16 :goto_6

    :cond_f
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(I)V

    return-void

    :cond_10
    const v2, 0x7f080189

    if-ne v0, v2, :cond_11

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/common/l;)V

    return-void

    :cond_11
    const v2, 0x7f08009d

    if-ne v0, v2, :cond_14

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0, p1}, Lcom/gmail/heagoo/common/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const p1, 0x7f0d028e

    goto :goto_5

    :cond_12
    const v0, 0x7f0d00f8

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_13
    return-void

    :cond_14
    const v1, 0x7f080165

    if-ne v0, v1, :cond_16

    invoke-static {p0}, Lcom/gmail/heagoo/common/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_15

    const p1, 0x7f0d00b6

    :goto_5
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_15
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->requestFocus()Z

    return-void

    :cond_16
    const v1, 0x7f080139

    if-ne v0, v1, :cond_17

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Landroid/view/View;)V

    :catch_1
    :cond_17
    :goto_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0800d8

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ae:Landroid/widget/TextView;

    const p1, 0x7f08013e

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->af:Landroid/view/View;

    const p1, 0x7f08013c

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ag:Landroid/view/View;

    const p1, 0x7f080139

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ah:Landroid/view/View;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->af:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ag:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ah:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800b5

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->z:Landroid/widget/LinearLayout;

    const p1, 0x7f080082

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->A:Landroid/widget/FrameLayout;

    const p1, 0x7f08011e

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/text/InputFilter;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const p1, 0x7f0800b3

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/neweditor/ObEditText;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    new-array v1, v0, [Landroid/text/InputFilter;

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setFilters([Landroid/text/InputFilter;)V

    const p1, 0x7f0800ac

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    const p1, 0x7f0800b6

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/neweditor/ObScrollView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->E:Lcom/gmail/heagoo/neweditor/ObScrollView;

    const p1, 0x7f0800ec

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->C:Landroid/widget/HorizontalScrollView;

    const p1, 0x7f080190

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewAnimator;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->F:Landroid/widget/ViewAnimator;

    const p1, 0x7f0801a8

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SlidingDrawer;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    const p1, 0x7f0800e2

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

    const p1, 0x7f080179

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->I:Landroid/widget/EditText;

    const p1, 0x7f0800e1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->J:Landroid/widget/ImageButton;

    const p1, 0x7f080178

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->K:Landroid/widget/ImageButton;

    const p1, 0x7f080177

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->L:Landroid/widget/ImageButton;

    const p1, 0x7f08015b

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->O:Landroid/widget/ImageView;

    const p1, 0x7f080085

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->T:Landroid/widget/ToggleButton;

    const p1, 0x7f080086

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->U:Landroid/widget/ToggleButton;

    const p1, 0x7f080189

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->P:Landroid/widget/ImageView;

    const p1, 0x7f08009d

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Q:Landroid/widget/ImageView;

    const p1, 0x7f080165

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->R:Landroid/widget/ImageView;

    const p1, 0x7f080151

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->S:Landroid/widget/ImageView;

    const p1, 0x7f0800e7

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->M:Landroid/widget/ImageButton;

    const p1, 0x7f08011d

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->N:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->z:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->V:Landroid/widget/LinearLayout;

    const p1, 0x7f080162

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->W:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->E:Lcom/gmail/heagoo/neweditor/ObScrollView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->X:Landroid/widget/ScrollView;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Q:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Landroid/widget/ImageView;Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->f:Z

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->b(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    const v1, 0xb0001

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setInputType(I)V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->v:I

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->v:I

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->O:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->J:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->K:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->L:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->M:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->K:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->L:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance p1, Lcom/gmail/heagoo/common/j;

    invoke-direct {p1}, Lcom/gmail/heagoo/common/j;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->A:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    rsub-int p1, p1, 0xff

    const/16 v4, 0x80

    invoke-static {v4, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->a(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/et;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/et;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->G:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/ex;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/ex;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1, p0}, Lcom/gmail/heagoo/neweditor/ObEditText;->a(Lcom/gmail/heagoo/neweditor/af;)V

    new-instance p1, Lcom/gmail/heagoo/apkeditor/fj;

    invoke-direct {p1, p0, v0}, Lcom/gmail/heagoo/apkeditor/fj;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;B)V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Y:Lcom/gmail/heagoo/apkeditor/fj;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->Y:Lcom/gmail/heagoo/apkeditor/fj;

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->E:Lcom/gmail/heagoo/neweditor/ObScrollView;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/ey;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/ey;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/neweditor/ObScrollView;->a(Lcom/gmail/heagoo/neweditor/aa;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->H:Landroid/widget/EditText;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/ez;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/ez;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->I:Landroid/widget/EditText;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/fa;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/fa;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/fb;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/fb;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->a(Lcom/gmail/heagoo/neweditor/r;)V

    new-instance p1, Lcom/gmail/heagoo/apkeditor/fk;

    invoke-direct {p1, p0, v0}, Lcom/gmail/heagoo/apkeditor/fk;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;B)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/fk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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
    .registers 4

    invoke-super {p0}, Lcom/gmail/heagoo/apkeditor/dr;->onResume()V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->b(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->v:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->v:I

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(IIZ)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d()V

    :cond_0
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->ak:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->B:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "curFileIndex"

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "modifySaved"

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

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

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

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
