.class public final Lcom/gmail/heagoo/pngeditor/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/pngeditor/a;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->a:I

    iput v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gmail/heagoo/pngeditor/a/b;->c:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    iget v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->a:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->b:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->d:Z

    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->a:I

    iget v1, p0, Lcom/gmail/heagoo/pngeditor/a/b;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v0, v0

    int-to-float v2, v5

    div-float/2addr v0, v2

    int-to-float v1, v1

    int-to-float v2, v6

    div-float/2addr v1, v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->a:I

    iget v1, p0, Lcom/gmail/heagoo/pngeditor/a/b;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, p1, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "width"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/pngeditor/a/b;->a:I

    return-void

    :cond_0
    const-string v0, "height"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/pngeditor/a/b;->b:I

    return-void

    :cond_1
    const-string v0, "zooming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gmail/heagoo/pngeditor/a/b;->c:Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/a/b;->d:Z

    return v0
.end method
