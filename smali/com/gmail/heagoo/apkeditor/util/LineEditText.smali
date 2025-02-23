.class public Lcom/gmail/heagoo/apkeditor/util/LineEditText;
.super Landroid/widget/EditText;


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->c:F

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->d:I

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->e:I

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->f:I

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->g:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->a:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->b:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->b:Landroid/graphics/Paint;

    const p2, -0x878788

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->b:Landroid/graphics/Paint;

    iget p2, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->c:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float p2, p2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p1, "4455"

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->d:I

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->d:I

    int-to-float p1, p1

    iget p2, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->c:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    float-to-int p1, p1

    iget p2, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->g:I

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->e:I

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->f:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getLineHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getLineCount()I

    move-result v2

    iget-object v3, v0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->a:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->b:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_0
    if-ge v10, v2, :cond_3

    invoke-virtual {v6, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    if-eq v11, v12, :cond_1

    const/16 v12, 0x3e8

    if-ge v11, v12, :cond_0

    const-string v12, "%03d"

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v7

    :goto_1
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_0
    const-string v12, "%4d"

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v7

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v10, v3}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v13

    iget v15, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    add-int/lit8 v7, v13, 0x1

    int-to-float v7, v7

    move-object/from16 v8, p1

    invoke-virtual {v8, v12, v15, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v12, v11

    goto :goto_3

    :cond_1
    move-object/from16 v8, p1

    :goto_3
    if-lt v5, v14, :cond_2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v14, 0xa

    if-ne v7, v14, :cond_2

    add-int/lit8 v11, v11, 0x1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v8, p1

    iget v2, v0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->d:I

    int-to-float v5, v2

    iget v2, v0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->g:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v2, v1

    int-to-float v6, v2

    iget v1, v0, Lcom/gmail/heagoo/apkeditor/util/LineEditText;->d:I

    int-to-float v7, v1

    const/4 v1, 0x1

    add-int/2addr v13, v1

    int-to-float v1, v13

    move-object/from16 v4, p1

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
