.class public final Lcom/gmail/heagoo/pngeditor/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/pngeditor/a;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/gmail/heagoo/pngeditor/a/c;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/a/c;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-array v11, v8, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v9, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, v11

    move v3, v8

    move v5, v13

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    aget v1, v11, v0

    ushr-int/lit8 v1, v1, 0x18

    aget v2, v11, v0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/gmail/heagoo/pngeditor/a/c;->a:I

    mul-int v2, v2, v1

    div-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x18

    aget v2, v11, v0

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v11, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    move-object v1, v11

    move v3, v8

    move v5, v13

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/pngeditor/a/c;->b:Z

    return-object v10
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "transparency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xff

    if-le p1, p2, :cond_0

    const/16 p1, 0xff

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    sub-int/2addr p2, p1

    iput p2, p0, Lcom/gmail/heagoo/pngeditor/a/c;->a:I

    :cond_2
    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/a/c;->b:Z

    return v0
.end method
