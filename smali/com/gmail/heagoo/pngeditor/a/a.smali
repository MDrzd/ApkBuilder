.class public final Lcom/gmail/heagoo/pngeditor/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/pngeditor/a;


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffffff

    iput v0, p0, Lcom/gmail/heagoo/pngeditor/a/a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/pngeditor/a/a;->b:I

    iput-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/a/a;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gmail/heagoo/pngeditor/a/a;->c:Z

    iget v1, v0, Lcom/gmail/heagoo/pngeditor/a/a;->a:I

    iget v2, v0, Lcom/gmail/heagoo/pngeditor/a/a;->b:I

    const/high16 v3, -0x1000000

    or-int/2addr v1, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int/lit8 v2, v2, 0x3

    mul-int v13, v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    new-array v15, v11, [I

    const/16 v16, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v12, :cond_4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x1

    move-object/from16 v3, p1

    move-object v4, v15

    move v6, v11

    move v8, v10

    move v9, v11

    move/from16 v18, v10

    move/from16 v10, v17

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    if-nez v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_3

    aget v4, v15, v3

    if-ne v4, v1, :cond_0

    aput v16, v15, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v11, :cond_3

    aget v4, v15, v3

    and-int/lit16 v5, v4, 0xff

    and-int/lit16 v6, v1, 0xff

    sub-int/2addr v5, v6

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v6, v7

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v4, v7

    mul-int v5, v5, v5

    mul-int v6, v6, v6

    add-int/2addr v5, v6

    mul-int v4, v4, v4

    add-int/2addr v5, v4

    if-gt v5, v13, :cond_2

    aput v16, v15, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object v3, v14

    move-object v4, v15

    move v6, v11

    move/from16 v8, v18

    move v9, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v10, v18, 0x1

    goto :goto_0

    :cond_4
    return-object v14
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/pngeditor/a/a;->a:I

    return-void

    :cond_0
    const-string v0, "tolerance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/pngeditor/a/a;->b:I

    :cond_1
    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/a/a;->c:Z

    return v0
.end method
