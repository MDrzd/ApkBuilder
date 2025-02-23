.class public final Lcom/gmail/heagoo/common/g;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .registers 2

    sget v0, Lcom/gmail/heagoo/common/g;->a:I

    if-gtz v0, :cond_0

    invoke-static {p0}, Lcom/gmail/heagoo/common/g;->c(Landroid/app/Activity;)V

    :cond_0
    sget p0, Lcom/gmail/heagoo/common/g;->a:I

    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static b(Landroid/app/Activity;)I
    .registers 2

    sget v0, Lcom/gmail/heagoo/common/g;->b:I

    if-gtz v0, :cond_0

    invoke-static {p0}, Lcom/gmail/heagoo/common/g;->c(Landroid/app/Activity;)V

    :cond_0
    sget p0, Lcom/gmail/heagoo/common/g;->b:I

    return p0
.end method

.method private static c(Landroid/app/Activity;)V
    .registers 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/gmail/heagoo/common/g;->a:I

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/gmail/heagoo/common/g;->b:I

    return-void
.end method
