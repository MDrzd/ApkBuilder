.class abstract Ljackpal/androidterm/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljackpal/androidterm/a/y;


# static fields
.field static final c:Lb/b/c/a/b;

.field private static d:[I

.field private static final r:Landroid/graphics/Matrix$ScaleToFit;


# instance fields
.field protected a:Z

.field protected b:[I

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Path;

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Path;

.field private final l:Landroid/graphics/Path;

.field private m:Landroid/graphics/RectF;

.field private n:Landroid/graphics/RectF;

.field private o:Landroid/graphics/Matrix;

.field private p:F

.field private q:F

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Bitmap;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljackpal/androidterm/a/a;->d:[I

    new-instance v0, Lb/b/c/a/b;

    const v1, -0x333334

    const/high16 v2, -0x1000000

    invoke-direct {v0, v1, v2}, Lb/b/c/a/b;-><init>(II)V

    sput-object v0, Ljackpal/androidterm/a/a;->c:Lb/b/c/a/b;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    sput-object v0, Ljackpal/androidterm/a/a;->r:Landroid/graphics/Matrix$ScaleToFit;

    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0x330000
        -0xff3300
        -0x323300
        -0xffff12
        -0x32ff33
        -0xff3233
        -0x1a1a1b
        -0x808081
        -0x10000
        -0xff0100
        -0x100
        -0xa3a301
        -0xff01
        -0xff0001
        -0x1
        -0x1000000
        -0xffffa1
        -0xffff79
        -0xffff51
        -0xffff29
        -0xffff01
        -0xffa100
        -0xffa0a1
        -0xffa079
        -0xffa051
        -0xffa029
        -0xffa001
        -0xff7900
        -0xff78a1
        -0xff7879
        -0xff7851
        -0xff7829
        -0xff7801
        -0xff5100
        -0xff50a1
        -0xff5079
        -0xff5051
        -0xff5029
        -0xff5001
        -0xff2900
        -0xff28a1
        -0xff2879
        -0xff2851
        -0xff2829
        -0xff2801
        -0xff0100
        -0xff00a1
        -0xff0079
        -0xff0051
        -0xff0029
        -0xff0001
        -0xa10000
        -0xa0ffa1
        -0xa0ff79
        -0xa0ff51
        -0xa0ff29
        -0xa0ff01
        -0xa0a100
        -0xa0a0a1
        -0xa0a079
        -0xa0a051
        -0xa0a029
        -0xa0a001
        -0xa07900
        -0xa078a1
        -0xa07879
        -0xa07851
        -0xa07829
        -0xa07801
        -0xa05100
        -0xa050a1
        -0xa05079
        -0xa05051
        -0xa05029
        -0xa05001
        -0xa02900
        -0xa028a1
        -0xa02879
        -0xa02851
        -0xa02829
        -0xa02801
        -0xa00100
        -0xa000a1
        -0xa00079
        -0xa00051
        -0xa00029
        -0xa00001
        -0x790000
        -0x78ffa1
        -0x78ff79
        -0x78ff51
        -0x78ff29
        -0x78ff01
        -0x78a100
        -0x78a0a1
        -0x78a079
        -0x78a051
        -0x78a029
        -0x78a001
        -0x787900
        -0x7878a1
        -0x787879
        -0x787851
        -0x787829
        -0x787801
        -0x785100
        -0x7850a1
        -0x785079
        -0x785051
        -0x785029
        -0x785001
        -0x782900
        -0x7828a1
        -0x782879
        -0x782851
        -0x782829
        -0x782801
        -0x780100
        -0x7800a1
        -0x780079
        -0x780051
        -0x780029
        -0x780001
        -0x510000
        -0x50ffa1
        -0x50ff79
        -0x50ff51
        -0x50ff29
        -0x50ff01
        -0x50a100
        -0x50a0a1
        -0x50a079
        -0x50a051
        -0x50a029
        -0x50a001
        -0x507900
        -0x5078a1
        -0x507879
        -0x507851
        -0x507829
        -0x507801
        -0x505100
        -0x5050a1
        -0x505079
        -0x505051
        -0x505029
        -0x505001
        -0x502900
        -0x5028a1
        -0x502879
        -0x502851
        -0x502829
        -0x502801
        -0x500100
        -0x5000a1
        -0x500079
        -0x500051
        -0x500029
        -0x500001
        -0x290000
        -0x28ffa1
        -0x28ff79
        -0x28ff51
        -0x28ff29
        -0x28ff01
        -0x28a100
        -0x28a0a1
        -0x28a079
        -0x28a051
        -0x28a029
        -0x28a001
        -0x287900
        -0x2878a1
        -0x287879
        -0x287851
        -0x287829
        -0x287801
        -0x285100
        -0x2850a1
        -0x285079
        -0x285051
        -0x285029
        -0x285001
        -0x282900
        -0x2828a1
        -0x282879
        -0x282851
        -0x282829
        -0x282801
        -0x280100
        -0x2800a1
        -0x280079
        -0x280051
        -0x280029
        -0x280001
        -0x10000
        -0xffa1
        -0xff79
        -0xff51
        -0xff29
        -0xff01
        -0xa100
        -0xa0a1
        -0xa079
        -0xa051
        -0xa029
        -0xa001
        -0x7900
        -0x78a1
        -0x7879
        -0x7851
        -0x7829
        -0x7801
        -0x5100
        -0x50a1
        -0x5079
        -0x5051
        -0x5029
        -0x5001
        -0x2900
        -0x28a1
        -0x2879
        -0x2851
        -0x2829
        -0x2801
        -0x100
        -0xa1
        -0x79
        -0x51
        -0x29
        -0x1
        -0xf7f7f8
        -0xededee
        -0xe3e3e4
        -0xd9d9da
        -0xcfcfd0
        -0xc5c5c6
        -0xbbbbbc
        -0xb1b1b2
        -0xa7a7a8
        -0x9d9d9e
        -0x939394
        -0x89898a
        -0x7f7f80
        -0x757576
        -0x6b6b6c
        -0x616162
        -0x575758
        -0x4d4d4e
        -0x434344
        -0x39393a
        -0x2f2f30
        -0x252526
        -0x1b1b1c
        -0x111112
    .end array-data
.end method

.method public constructor <init>(Lb/b/c/a/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljackpal/androidterm/a/a;->u:I

    if-nez p1, :cond_0

    sget-object p1, Ljackpal/androidterm/a/a;->c:Lb/b/c/a/b;

    :cond_0
    const/16 v0, 0x104

    new-array v0, v0, [I

    sget-object v1, Ljackpal/androidterm/a/a;->d:[I

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljackpal/androidterm/a/a;->b:[I

    iget-object v0, p0, Ljackpal/androidterm/a/a;->b:[I

    invoke-virtual {p1}, Lb/b/c/a/b;->a()I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Ljackpal/androidterm/a/a;->b:[I

    const/16 v1, 0x101

    invoke-virtual {p1}, Lb/b/c/a/b;->b()I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Ljackpal/androidterm/a/a;->b:[I

    const/16 v1, 0x102

    invoke-virtual {p1}, Lb/b/c/a/b;->c()I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Ljackpal/androidterm/a/a;->b:[I

    const/16 v1, 0x103

    invoke-virtual {p1}, Lb/b/c/a/b;->d()I

    move-result v2

    aput v2, v0, v1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/a/a;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Ljackpal/androidterm/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lb/b/c/a/b;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->g:Landroid/graphics/Paint;

    iget-object p1, p0, Ljackpal/androidterm/a/a;->g:Landroid/graphics/Paint;

    const v0, -0x6f6f70

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Ljackpal/androidterm/a/a;->g:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p0, Ljackpal/androidterm/a/a;->g:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->h:Landroid/graphics/Paint;

    iget-object p1, p0, Ljackpal/androidterm/a/a;->h:Landroid/graphics/Paint;

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Ljackpal/androidterm/a/a;->h:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->f:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v0, p0, Ljackpal/androidterm/a/a;->f:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->i:Landroid/graphics/Path;

    iget-object p1, p0, Ljackpal/androidterm/a/a;->i:Landroid/graphics/Path;

    const v0, 0x3ea8f5c3    # 0.33f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Ljackpal/androidterm/a/a;->i:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->j:Landroid/graphics/Path;

    iget-object p1, p0, Ljackpal/androidterm/a/a;->j:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Ljackpal/androidterm/a/a;->j:Landroid/graphics/Path;

    const v3, 0x3f28f5c3    # 0.66f

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Ljackpal/androidterm/a/a;->j:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->k:Landroid/graphics/Path;

    iget-object p1, p0, Ljackpal/androidterm/a/a;->k:Landroid/graphics/Path;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Ljackpal/androidterm/a/a;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Ljackpal/androidterm/a/a;->k:Landroid/graphics/Path;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->l:Landroid/graphics/Path;

    iget-object p1, p0, Ljackpal/androidterm/a/a;->l:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Ljackpal/androidterm/a/a;->l:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Ljackpal/androidterm/a/a;->l:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->m:Landroid/graphics/RectF;

    iget-object p1, p0, Ljackpal/androidterm/a/a;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v0, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->n:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ljackpal/androidterm/a/a;->o:Landroid/graphics/Matrix;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V
    .registers 5

    shr-int/2addr p3, p4

    and-int/lit8 p3, p3, 0x3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p3, p0, Ljackpal/androidterm/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object p3, p0, Ljackpal/androidterm/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;FFFFI)V
    .registers 13

    if-nez p6, :cond_0

    sub-float v2, p3, p5

    add-float v3, p2, p4

    iget-object v5, p0, Ljackpal/androidterm/a/a;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v0, p0, Ljackpal/androidterm/a/a;->p:F

    cmpl-float v0, p4, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Ljackpal/androidterm/a/a;->q:F

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_2

    :cond_1
    iput p4, p0, Ljackpal/androidterm/a/a;->p:F

    iput p5, p0, Ljackpal/androidterm/a/a;->q:F

    iget-object v0, p0, Ljackpal/androidterm/a/a;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Ljackpal/androidterm/a/a;->o:Landroid/graphics/Matrix;

    iget-object v3, p0, Ljackpal/androidterm/a/a;->m:Landroid/graphics/RectF;

    iget-object v4, p0, Ljackpal/androidterm/a/a;->n:Landroid/graphics/RectF;

    sget-object v5, Ljackpal/androidterm/a/a;->r:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    float-to-int p4, p4

    float-to-int v0, p5

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Ljackpal/androidterm/a/a;->s:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Ljackpal/androidterm/a/a;->t:Landroid/graphics/Bitmap;

    iput v1, p0, Ljackpal/androidterm/a/a;->u:I

    :cond_2
    iget p4, p0, Ljackpal/androidterm/a/a;->u:I

    if-eq p6, p4, :cond_3

    iput p6, p0, Ljackpal/androidterm/a/a;->u:I

    iget-object p4, p0, Ljackpal/androidterm/a/a;->t:Landroid/graphics/Bitmap;

    invoke-virtual {p4, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance p4, Landroid/graphics/Canvas;

    iget-object v0, p0, Ljackpal/androidterm/a/a;->t:Landroid/graphics/Bitmap;

    invoke-direct {p4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Ljackpal/androidterm/a/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Ljackpal/androidterm/a/a;->i:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-direct {p0, p4, v0, p6, v1}, Ljackpal/androidterm/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    iget-object v0, p0, Ljackpal/androidterm/a/a;->j:Landroid/graphics/Path;

    const/4 v3, 0x2

    invoke-direct {p0, p4, v0, p6, v3}, Ljackpal/androidterm/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    iget-object v0, p0, Ljackpal/androidterm/a/a;->k:Landroid/graphics/Path;

    const/4 v3, 0x4

    invoke-direct {p0, p4, v0, p6, v3}, Ljackpal/androidterm/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    iget-object v0, p0, Ljackpal/androidterm/a/a;->l:Landroid/graphics/Path;

    const/4 v3, 0x6

    invoke-direct {p0, p4, v0, p6, v3}, Ljackpal/androidterm/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    iget-object p4, p0, Ljackpal/androidterm/a/a;->s:Landroid/graphics/Bitmap;

    invoke-virtual {p4, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance p4, Landroid/graphics/Canvas;

    iget-object p6, p0, Ljackpal/androidterm/a/a;->s:Landroid/graphics/Bitmap;

    invoke-direct {p4, p6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p6, p0, Ljackpal/androidterm/a/a;->t:Landroid/graphics/Bitmap;

    iget-object v0, p0, Ljackpal/androidterm/a/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p4, p6, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    iget-object p4, p0, Ljackpal/androidterm/a/a;->s:Landroid/graphics/Bitmap;

    sub-float/2addr p3, p5

    iget-object p5, p0, Ljackpal/androidterm/a/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Ljackpal/androidterm/a/a;->a:Z

    return-void
.end method
