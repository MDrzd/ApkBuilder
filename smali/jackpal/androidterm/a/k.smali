.class final Ljackpal/androidterm/a/k;
.super Ljackpal/androidterm/a/a;


# static fields
.field private static final i:[C


# instance fields
.field private d:Landroid/graphics/Paint;

.field private e:F

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x58

    aput-char v2, v0, v1

    sput-object v0, Ljackpal/androidterm/a/k;->i:[C

    return-void
.end method

.method public constructor <init>(ILb/b/c/a/b;)V
    .registers 5

    invoke-direct {p0, p2}, Ljackpal/androidterm/a/a;-><init>(Lb/b/c/a/b;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    iget-object p2, p0, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Ljackpal/androidterm/a/k;->f:I

    iget-object p1, p0, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Ljackpal/androidterm/a/k;->g:I

    iget p1, p0, Ljackpal/androidterm/a/k;->f:I

    iget p2, p0, Ljackpal/androidterm/a/k;->g:I

    add-int/2addr p1, p2

    iput p1, p0, Ljackpal/androidterm/a/k;->h:I

    iget-object p1, p0, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    sget-object p2, Ljackpal/androidterm/a/k;->i:[C

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    iput p1, p0, Ljackpal/androidterm/a/k;->e:F

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/k;->e:F

    return v0
.end method

.method public final a(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V
    .registers 40

    move-object/from16 v7, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p11

    move/from16 v14, p14

    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/a/z;->a(I)I

    move-result v1

    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/a/z;->b(I)I

    move-result v2

    invoke-static/range {p10 .. p10}, Ljackpal/androidterm/a/z;->c(I)I

    move-result v15

    iget-boolean v3, v7, Ljackpal/androidterm/a/k;->a:Z

    and-int/lit8 v4, v15, 0x12

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v4, v2

    move v2, v1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz p9, :cond_2

    const/16 v2, 0x103

    :cond_2
    and-int/lit8 v1, v15, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const/16 v3, 0x8

    if-eqz v1, :cond_4

    if-ge v2, v3, :cond_4

    add-int/lit8 v2, v2, 0x8

    :cond_4
    iget-object v1, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    iget-object v3, v7, Ljackpal/androidterm/a/k;->b:[I

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v9

    iget v2, v7, Ljackpal/androidterm/a/k;->e:F

    mul-float v1, v1, v2

    add-float v21, p2, v1

    iget v1, v7, Ljackpal/androidterm/a/k;->g:I

    int-to-float v1, v1

    add-float v1, p3, v1

    iget v2, v7, Ljackpal/androidterm/a/k;->h:I

    int-to-float v2, v2

    sub-float v3, v1, v2

    int-to-float v1, v10

    iget v2, v7, Ljackpal/androidterm/a/k;->e:F

    mul-float v1, v1, v2

    add-float v17, v21, v1

    iget-object v2, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v18, v2

    move/from16 v2, v21

    const/16 v13, 0x8

    move v13, v4

    move/from16 v4, v17

    const/4 v12, 0x1

    move/from16 v5, p3

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-gt v9, v11, :cond_5

    add-int v1, v9, v10

    if-ge v11, v1, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    const/4 v1, 0x0

    if-eqz v9, :cond_6

    int-to-float v1, v11

    iget v2, v7, Ljackpal/androidterm/a/k;->e:F

    mul-float v1, v1, v2

    add-float v10, p2, v1

    float-to-int v0, v10

    int-to-float v2, v0

    int-to-float v0, v14

    iget v1, v7, Ljackpal/androidterm/a/k;->e:F

    mul-float v4, v0, v1

    iget v0, v7, Ljackpal/androidterm/a/k;->f:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v6, p15

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/a/k;->a(Landroid/graphics/Canvas;FFFFI)V

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    and-int/lit8 v0, v15, 0x20

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_11

    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_8

    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_9

    const/4 v15, 0x1

    goto :goto_7

    :cond_9
    const/4 v15, 0x0

    :goto_7
    if-eqz v11, :cond_a

    iget-object v0, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_a
    if-eqz v15, :cond_b

    iget-object v0, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_b
    const/16 v0, 0x8

    if-ge v13, v0, :cond_c

    if-eqz v11, :cond_c

    iget-object v1, v7, Ljackpal/androidterm/a/k;->b:[I

    add-int/lit8 v4, v13, 0x8

    aget v0, v1, v4

    goto :goto_8

    :cond_c
    iget-object v0, v7, Ljackpal/androidterm/a/k;->b:[I

    aget v0, v0, v13

    :goto_8
    move v12, v0

    iget-object v0, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v7, Ljackpal/androidterm/a/k;->h:I

    int-to-float v0, v0

    sub-float v8, p3, v0

    if-eqz v9, :cond_e

    sub-int v20, p12, p7

    add-int v1, v20, p13

    sub-int v16, p8, v1

    if-lez v20, :cond_d

    iget-object v1, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move-object/from16 v18, p6

    move/from16 v19, p7

    move/from16 v22, v8

    move-object/from16 v23, v1

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :cond_d
    iget-object v0, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    iget-object v1, v7, Ljackpal/androidterm/a/k;->b:[I

    const/16 v2, 0x102

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move/from16 v2, p12

    move/from16 v3, p13

    move v4, v10

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    if-lez v16, :cond_f

    iget-object v0, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    add-int v0, p12, p13

    int-to-float v1, v14

    iget v2, v7, Ljackpal/androidterm/a/k;->e:F

    mul-float v1, v1, v2

    add-float/2addr v1, v10

    iget-object v2, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    move-object/from16 p7, p1

    move-object/from16 p8, p6

    move/from16 p9, v0

    move/from16 p10, v16

    move/from16 p11, v1

    move/from16 p12, v8

    move-object/from16 p13, v2

    invoke-virtual/range {p7 .. p13}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_e
    iget-object v1, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    move-object/from16 p9, p1

    move-object/from16 p10, p6

    move/from16 p11, p7

    move/from16 p12, p8

    move/from16 p13, v21

    move/from16 p14, v8

    move-object/from16 p15, v1

    invoke-virtual/range {p9 .. p15}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :cond_f
    :goto_9
    if-eqz v11, :cond_10

    iget-object v0, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    if-eqz v15, :cond_11

    iget-object v0, v7, Ljackpal/androidterm/a/k;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_11
    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/k;->f:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/k;->h:I

    return v0
.end method
