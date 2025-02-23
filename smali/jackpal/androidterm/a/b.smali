.class final Ljackpal/androidterm/a/b;
.super Ljackpal/androidterm/a/a;


# instance fields
.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:I

.field private g:[F

.field private h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lb/b/c/a/b;)V
    .registers 4

    invoke-direct {p0, p2}, Ljackpal/androidterm/a/a;-><init>(Lb/b/c/a/b;)V

    sget p2, Ljackpal/androidterm/a/a/b;->a:I

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    const p2, 0x7f070068

    goto :goto_0

    :cond_0
    const p2, 0x7f070069

    :goto_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Ljackpal/androidterm/a/b;->d:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/b;->h:Landroid/graphics/Paint;

    iget-object p1, p0, Ljackpal/androidterm/a/b;->h:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(II)V
    .registers 9

    iget v0, p0, Ljackpal/androidterm/a/b;->e:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Ljackpal/androidterm/a/b;->f:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/b;->g:[F

    if-nez v0, :cond_3

    :cond_0
    iput p1, p0, Ljackpal/androidterm/a/b;->e:I

    iput p2, p0, Ljackpal/androidterm/a/b;->f:I

    iget-object v0, p0, Ljackpal/androidterm/a/b;->g:[F

    if-nez v0, :cond_1

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Ljackpal/androidterm/a/b;->g:[F

    iget-object v0, p0, Ljackpal/androidterm/a/b;->g:[F

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    rsub-int/lit8 v2, v0, 0x2

    shl-int/lit8 v1, v2, 0x3

    shr-int v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shr-int v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, v2

    iget-object v3, p0, Ljackpal/androidterm/a/b;->g:[F

    mul-int/lit8 v4, v0, 0x6

    int-to-float v1, v1

    const v5, 0x3b808081

    mul-float v1, v1, v5

    aput v1, v3, v4

    iget-object v1, p0, Ljackpal/androidterm/a/b;->g:[F

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x4

    int-to-float v2, v2

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ljackpal/androidterm/a/b;->h:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v0, p0, Ljackpal/androidterm/a/b;->g:[F

    invoke-direct {p2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFI[CIIII)V
    .registers 14

    iget-object v0, p0, Ljackpal/androidterm/a/b;->b:[I

    aget p8, v0, p8

    iget-object v0, p0, Ljackpal/androidterm/a/b;->b:[I

    aget v0, v0, p9

    invoke-direct {p0, p8, v0}, Ljackpal/androidterm/a/b;->a(II)V

    float-to-int p2, p2

    mul-int/lit8 p4, p4, 0x4

    add-int/2addr p2, p4

    float-to-int p3, p3

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    new-instance p8, Landroid/graphics/Rect;

    invoke-direct {p8}, Landroid/graphics/Rect;-><init>()V

    add-int/lit8 v0, p3, -0x8

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput p3, p8, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Ljackpal/androidterm/a/b;->b:[I

    aget p3, p3, p9

    iget-object p9, p0, Ljackpal/androidterm/a/b;->b:[I

    const/16 v0, 0x101

    aget p9, p9, v0

    const/4 v0, 0x0

    if-eq p3, p9, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-ge v0, p7, :cond_3

    add-int p9, v0, p6

    aget-char p9, p5, p9

    const/16 v1, 0x80

    if-ge p9, v1, :cond_2

    const/16 v1, 0x20

    if-ne p9, v1, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    and-int/lit8 v1, p9, 0x1f

    shr-int/lit8 p9, p9, 0x5

    and-int/lit8 p9, p9, 0x3

    shl-int/lit8 v1, v1, 0x2

    shl-int/lit8 p9, p9, 0x3

    add-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, p9, 0x8

    invoke-virtual {p4, v1, p9, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iput p2, p8, Landroid/graphics/Rect;->left:I

    add-int/lit8 p9, p2, 0x4

    iput p9, p8, Landroid/graphics/Rect;->right:I

    iget-object p9, p0, Ljackpal/androidterm/a/b;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ljackpal/androidterm/a/b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p9, p4, p8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()F
    .registers 2

    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public final a(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V
    .registers 30

    move/from16 v10, p4

    move/from16 v11, p11

    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/a/z;->a(I)I

    move-result v0

    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/a/z;->b(I)I

    move-result v1

    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/a/z;->c(I)I

    move-result v2

    move-object v12, p0

    iget-boolean v3, v12, Ljackpal/androidterm/a/b;->a:Z

    and-int/lit8 v4, v2, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v13, v1

    move v1, v0

    move v0, v13

    :cond_1
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x8

    if-eqz v3, :cond_3

    if-ge v0, v4, :cond_3

    add-int/lit8 v0, v0, 0x8

    :cond_3
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_5

    if-ge v1, v4, :cond_5

    add-int/lit8 v1, v1, 0x8

    :cond_5
    move v3, v1

    if-eqz p9, :cond_6

    const/16 v1, 0x103

    const/16 v9, 0x103

    goto :goto_3

    :cond_6
    move v9, v3

    :goto_3
    and-int/lit8 v1, v2, 0x20

    if-eqz v1, :cond_7

    const/4 v5, 0x1

    :cond_7
    if-eqz v5, :cond_8

    move v8, v9

    goto :goto_4

    :cond_8
    move v8, v0

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v9}, Ljackpal/androidterm/a/b;->a(Landroid/graphics/Canvas;FFI[CIIII)V

    if-gt v10, v11, :cond_9

    add-int v0, v10, p8

    if-ge v11, v0, :cond_9

    sub-int v6, v11, v10

    const/4 v7, 0x1

    const/16 v8, 0x102

    const/16 v9, 0x103

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p11

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Ljackpal/androidterm/a/b;->a(Landroid/graphics/Canvas;FFI[CIIII)V

    :cond_9
    return-void
.end method

.method public final b()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
