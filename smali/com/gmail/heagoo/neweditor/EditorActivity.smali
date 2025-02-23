.class public Lcom/gmail/heagoo/neweditor/EditorActivity;
.super Lcom/gmail/heagoo/common/f;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static d:I = 0x12c

.field private static e:I = 0x12c

.field private static f:I = 0x190

.field private static g:I = 0x64


# instance fields
.field private A:Landroid/widget/EditText;

.field private B:Landroid/widget/ImageButton;

.field private C:Landroid/widget/ImageButton;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ToggleButton;

.field private H:Landroid/widget/ToggleButton;

.field private I:Landroid/widget/LinearLayout;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ScrollView;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Lcom/gmail/heagoo/neweditor/d;

.field private Q:Z

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Landroid/widget/LinearLayout;

.field private Y:I

.field private Z:I

.field protected a:Lcom/gmail/heagoo/neweditor/ObEditText;

.field private aa:I

.field public b:I

.field protected c:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:Lcom/gmail/heagoo/neweditor/q;

.field private q:Lcom/gmail/heagoo/neweditor/o;

.field private r:Z

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/view/View;

.field private w:Lcom/gmail/heagoo/neweditor/ObScrollView;

.field private x:Landroid/widget/ViewAnimator;

.field private y:Landroid/widget/SlidingDrawer;

.field private z:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/gmail/heagoo/common/f;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->i:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->j:I

    iput v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->k:I

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->l:Z

    const/16 v2, 0x32

    iput v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->n:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->o:Landroid/os/Handler;

    new-instance v2, Lcom/gmail/heagoo/neweditor/q;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/neweditor/q;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->p:Lcom/gmail/heagoo/neweditor/q;

    new-instance v2, Lcom/gmail/heagoo/neweditor/o;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/neweditor/o;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->q:Lcom/gmail/heagoo/neweditor/o;

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->Q:Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->S:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->T:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->U:Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->V:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->W:Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/neweditor/EditorActivity;I)I
    .registers 2

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->k:I

    return p1
.end method

.method private a(I)V
    .registers 4

    const/16 v0, 0x28

    if-le p1, v0, :cond_0

    const/16 p1, 0x28

    :cond_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    const/4 p1, 0x4

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    int-to-float p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->R:I

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/neweditor/EditorActivity;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(ZI)V

    return-void
.end method

.method private a(ZI)V
    .registers 7

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->R:I

    if-eq p2, v0, :cond_3

    :cond_0
    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->Q:Z

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->v:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string p1, ""

    :goto_0
    if-ge v2, p2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "9"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->R:I

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->getResources()Landroid/content/res/Resources;

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

    :cond_2
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->v:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->R:I

    :goto_1
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestLayout()V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/neweditor/EditorActivity;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/gmail/heagoo/neweditor/EditorActivity;I)I
    .registers 2

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->j:I

    return p1
.end method

.method static synthetic b(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->Q:Z

    return p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/neweditor/EditorActivity;Z)Z
    .registers 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->c(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/gmail/heagoo/neweditor/EditorActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    return-object p0
.end method

.method private c(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->z:Landroid/widget/EditText;

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
    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->d()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->requestFocus()Z

    return v2

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v3}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v3

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v4, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(I)V

    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2, v0, v3}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(II)V

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->aa:I

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method static synthetic d(Lcom/gmail/heagoo/neweditor/EditorActivity;)Lcom/gmail/heagoo/neweditor/d;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->P:Lcom/gmail/heagoo/neweditor/d;

    return-object p0
.end method

.method private d(Z)V
    .registers 6

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setMaxWidth(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->setMaxWidth(I)V

    return-void
.end method

.method private d()Z
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->G:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->H:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->H:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->P:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(II)V

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method static synthetic e(Lcom/gmail/heagoo/neweditor/EditorActivity;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->k:I

    return p0
.end method

.method static synthetic f(Lcom/gmail/heagoo/neweditor/EditorActivity;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->j:I

    return p0
.end method

.method static synthetic g(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->i:Z

    return p0
.end method

.method static synthetic h(Lcom/gmail/heagoo/neweditor/EditorActivity;)I
    .registers 1

    iget p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->n:I

    return p0
.end method

.method static synthetic i(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->d(Z)V

    invoke-virtual {p0, v3}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Z)V

    :cond_0
    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->J:Landroid/widget/ImageView;

    const v0, 0x7f0700aa

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic j(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->l:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->d(Z)V

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->J:Landroid/widget/ImageView;

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->x:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method static synthetic k(Lcom/gmail/heagoo/neweditor/EditorActivity;)Landroid/widget/SlidingDrawer;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    return-object p0
.end method

.method static synthetic l(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->G:Landroid/widget/ToggleButton;

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

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->C:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->C:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method static synthetic m(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->r:Z

    return p0
.end method

.method static synthetic n(Lcom/gmail/heagoo/neweditor/EditorActivity;)Lcom/gmail/heagoo/neweditor/d;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->P:Lcom/gmail/heagoo/neweditor/d;

    return-object p0
.end method

.method static synthetic o(Lcom/gmail/heagoo/neweditor/EditorActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->M:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/gmail/heagoo/neweditor/EditorActivity;)Landroid/widget/ScrollView;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->K:Landroid/widget/ScrollView;

    return-object p0
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->P:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v0

    iget-boolean v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->V:Z

    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->E:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->E:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->V:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(IIZ)V
    .registers 6

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->h:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->k:I

    if-ge p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->k:I

    :cond_1
    iget p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->j:I

    if-eq p1, v1, :cond_2

    iget p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->j:I

    if-le p2, p1, :cond_3

    :cond_2
    iput p2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->j:I

    :cond_3
    iput-boolean p3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->i:Z

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->o:Landroid/os/Handler;

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->q:Lcom/gmail/heagoo/neweditor/o;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->r:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->o:Landroid/os/Handler;

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->q:Lcom/gmail/heagoo/neweditor/o;

    sget p3, Lcom/gmail/heagoo/neweditor/EditorActivity;->d:I

    :goto_0
    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->o:Landroid/os/Handler;

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->q:Lcom/gmail/heagoo/neweditor/o;

    sget p3, Lcom/gmail/heagoo/neweditor/EditorActivity;->f:I

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->o:Landroid/os/Handler;

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->q:Lcom/gmail/heagoo/neweditor/o;

    sget p3, Lcom/gmail/heagoo/neweditor/EditorActivity;->g:I

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method protected final a(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->Q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->p:Lcom/gmail/heagoo/neweditor/q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->o:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->p:Lcom/gmail/heagoo/neweditor/q;

    sget v1, Lcom/gmail/heagoo/neweditor/EditorActivity;->e:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->o:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->p:Lcom/gmail/heagoo/neweditor/q;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineCount()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->b:I

    return-void
.end method

.method protected final b()V
    .registers 10

    const-string v0, "com.gmail.heagoo.appdm.util.FileCopyUtil"

    const-string v1, "copyBack"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->L:Ljava/lang/String;

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->M:Ljava/lang/String;

    aput-object v4, v2, v7

    iget-boolean v4, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->O:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v0, v1, v3, v2}, La/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final b(Z)V
    .registers 7

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->P:Lcom/gmail/heagoo/neweditor/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->r:Z

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->r:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v3, v1, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->a(II)V

    new-instance v1, Lcom/gmail/heagoo/neweditor/f;

    invoke-direct {v1, p0, p1}, Lcom/gmail/heagoo/neweditor/f;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;Lcom/gmail/heagoo/neweditor/d;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a()V

    return-void
.end method

.method protected final c()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "xmlPath"

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08015b

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const-string v0, "hideDocumentList"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->animateOpen()V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->close()V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    invoke-virtual {p1, v0}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->requestFocus()Z

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->z:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_3
    const v0, 0x7f0800e1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->c(Z)Z

    return-void

    :cond_4
    const v0, 0x7f080178

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->c(Z)Z

    return-void

    :cond_5
    const v0, 0x7f080189

    if-ne p1, v0, :cond_6

    new-instance p1, Lcom/gmail/heagoo/common/w;

    new-instance v0, Lcom/gmail/heagoo/neweditor/n;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/neweditor/n;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    iget v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->Z:I

    invoke-direct {p1, p0, v0, v1}, Lcom/gmail/heagoo/common/w;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/common/y;I)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/w;->show()V

    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/gmail/heagoo/common/f;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->l:Z

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->l:Z

    const v2, 0x7f0a007e

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->setContentView(I)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filePath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->L:Ljava/lang/String;

    const-string v3, "realFilePath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->M:Ljava/lang/String;

    const-string v3, "syntaxFileName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->N:Ljava/lang/String;

    const-string v3, "isRootMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->O:Z

    const-string v3, "resourceIds"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    aget v3, v2, v0

    iput v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->Y:I

    aget v3, v2, v1

    iput v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->Z:I

    const/4 v3, 0x2

    aget v2, v2, v3

    iput v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->aa:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    const-string v2, "modifySaved"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->c:Z

    iget-boolean p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->c()V

    :cond_0
    new-instance p1, Lcom/gmail/heagoo/neweditor/d;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->L:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->N:Ljava/lang/String;

    invoke-direct {p1, p0, v2, v3}, Lcom/gmail/heagoo/neweditor/d;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->P:Lcom/gmail/heagoo/neweditor/d;

    :try_start_1
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->P:Lcom/gmail/heagoo/neweditor/d;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->L:Ljava/lang/String;

    iget v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->Y:I

    invoke-virtual {p1, p0, v2, v3}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const p1, 0x7f0800d8

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->M:Ljava/lang/String;

    const/4 v3, -0x1

    const/16 v4, 0x2f

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->M:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->M:Ljava/lang/String;

    :goto_1
    add-int/2addr v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->L:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->L:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->L:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800b7

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->X:Landroid/widget/LinearLayout;

    const p1, 0x7f0800b5

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->s:Landroid/widget/LinearLayout;

    const p1, 0x7f080082

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->t:Landroid/widget/FrameLayout;

    const p1, 0x7f08011e

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    const p1, 0x7f0800b3

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/neweditor/ObEditText;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    const p1, 0x7f0800ac

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->v:Landroid/view/View;

    const p1, 0x7f0800b6

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/neweditor/ObScrollView;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->w:Lcom/gmail/heagoo/neweditor/ObScrollView;

    const p1, 0x7f080190

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewAnimator;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->x:Landroid/widget/ViewAnimator;

    const p1, 0x7f0801a8

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SlidingDrawer;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    const p1, 0x7f0800e2

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->z:Landroid/widget/EditText;

    const p1, 0x7f080179

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->A:Landroid/widget/EditText;

    const p1, 0x7f0800e1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->B:Landroid/widget/ImageButton;

    const p1, 0x7f080178

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->C:Landroid/widget/ImageButton;

    const v2, 0x7f08015b

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->D:Landroid/widget/ImageView;

    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->G:Landroid/widget/ToggleButton;

    const v2, 0x7f080086

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->H:Landroid/widget/ToggleButton;

    const v2, 0x7f080189

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->E:Landroid/widget/ImageView;

    const v2, 0x7f080098

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->F:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->s:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->I:Landroid/widget/LinearLayout;

    const v2, 0x7f080162

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->C:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->w:Lcom/gmail/heagoo/neweditor/ObScrollView;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->K:Landroid/widget/ScrollView;

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-boolean v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->l:Z

    invoke-virtual {p1, v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->b(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    const v2, 0xb0091

    invoke-virtual {p1, v2}, Lcom/gmail/heagoo/neweditor/ObEditText;->setInputType(I)V

    const/16 p1, 0xc

    iput p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->m:I

    iget p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->m:I

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->P:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/d;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v2, p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(IIZ)V

    :cond_3
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->B:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->C:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->C:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance p1, Lcom/gmail/heagoo/common/j;

    invoke-direct {p1}, Lcom/gmail/heagoo/common/j;-><init>()V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->v:Landroid/view/View;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/j;->b()I

    move-result p1

    const/16 v1, 0x80

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    rsub-int p1, p1, 0xff

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/neweditor/ObEditText;->a(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->u:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :catch_1
    const-string p1, "failed"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onResume()V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/gmail/heagoo/neweditor/g;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/neweditor/g;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->y:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/gmail/heagoo/neweditor/h;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/neweditor/h;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    new-instance v1, Lcom/gmail/heagoo/neweditor/i;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/neweditor/i;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->a(Lcom/gmail/heagoo/neweditor/af;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    new-instance v1, Lcom/gmail/heagoo/neweditor/j;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/neweditor/j;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->w:Lcom/gmail/heagoo/neweditor/ObScrollView;

    new-instance v1, Lcom/gmail/heagoo/neweditor/k;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/neweditor/k;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/ObScrollView;->a(Lcom/gmail/heagoo/neweditor/aa;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->z:Landroid/widget/EditText;

    new-instance v1, Lcom/gmail/heagoo/neweditor/l;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/neweditor/l;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->A:Landroid/widget/EditText;

    new-instance v1, Lcom/gmail/heagoo/neweditor/m;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/neweditor/m;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->m:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->m:I

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->P:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/q;->a(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(ZI)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gmail/heagoo/neweditor/e;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/neweditor/e;-><init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/gmail/heagoo/common/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "modifySaved"

    iget-boolean v1, p0, Lcom/gmail/heagoo/neweditor/EditorActivity;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onStart()V

    return-void
.end method
