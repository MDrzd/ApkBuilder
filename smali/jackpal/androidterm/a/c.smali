.class public Ljackpal/androidterm/a/c;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final L:Z

.field private static S:Landroid/text/util/Linkify$MatchFilter;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:F

.field private E:F

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private M:Ljava/lang/Runnable;

.field private N:Landroid/view/GestureDetector;

.field private O:Landroid/view/GestureDetector$OnGestureListener;

.field private P:Landroid/widget/Scroller;

.field private Q:Ljava/lang/Runnable;

.field private R:Ljava/util/Hashtable;

.field private T:Ljackpal/androidterm/a/i;

.field private U:F

.field private V:Ljackpal/androidterm/a/o;

.field private W:Ljava/lang/String;

.field private a:Z

.field private final aa:Landroid/os/Handler;

.field private ab:Ljackpal/androidterm/a/ac;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Ljackpal/androidterm/a/q;

.field private f:F

.field private g:I

.field private h:I

.field private i:Ljackpal/androidterm/a/y;

.field private j:I

.field private k:Lb/b/c/a/b;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Z

.field private o:Ljackpal/androidterm/a/x;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Transformer TF101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Ljackpal/androidterm/a/c;->L:Z

    new-instance v0, Ljackpal/androidterm/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljackpal/androidterm/a/h;-><init>(B)V

    sput-object v0, Ljackpal/androidterm/a/c;->S:Landroid/text/util/Linkify$MatchFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljackpal/androidterm/a/q;Landroid/util/DisplayMetrics;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/a/c;->b:Z

    const/16 v1, 0xa

    iput v1, p0, Ljackpal/androidterm/a/c;->j:I

    sget-object v1, Ljackpal/androidterm/a/a;->c:Lb/b/c/a/b;

    iput-object v1, p0, Ljackpal/androidterm/a/c;->k:Lb/b/c/a/b;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljackpal/androidterm/a/c;->v:Z

    iput-boolean v0, p0, Ljackpal/androidterm/a/c;->w:Z

    iput-boolean v0, p0, Ljackpal/androidterm/a/c;->x:Z

    iput-boolean v0, p0, Ljackpal/androidterm/a/c;->A:Z

    iput-boolean v0, p0, Ljackpal/androidterm/a/c;->B:Z

    const/4 v2, -0x1

    iput v2, p0, Ljackpal/androidterm/a/c;->F:I

    iput v2, p0, Ljackpal/androidterm/a/c;->G:I

    iput v2, p0, Ljackpal/androidterm/a/c;->H:I

    iput v2, p0, Ljackpal/androidterm/a/c;->I:I

    iput v2, p0, Ljackpal/androidterm/a/c;->J:I

    iput v2, p0, Ljackpal/androidterm/a/c;->K:I

    new-instance v2, Ljackpal/androidterm/a/d;

    invoke-direct {v2, p0}, Ljackpal/androidterm/a/d;-><init>(Ljackpal/androidterm/a/c;)V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->M:Ljava/lang/Runnable;

    new-instance v2, Ljackpal/androidterm/a/e;

    invoke-direct {v2, p0}, Ljackpal/androidterm/a/e;-><init>(Ljackpal/androidterm/a/c;)V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->Q:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->R:Ljava/util/Hashtable;

    new-instance v2, Ljackpal/androidterm/a/i;

    invoke-direct {v2, p0, v0}, Ljackpal/androidterm/a/i;-><init>(Ljackpal/androidterm/a/c;B)V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->T:Ljackpal/androidterm/a/i;

    const-string v2, ""

    iput-object v2, p0, Ljackpal/androidterm/a/c;->W:Ljava/lang/String;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->aa:Landroid/os/Handler;

    new-instance v2, Ljackpal/androidterm/a/f;

    invoke-direct {v2, p0}, Ljackpal/androidterm/a/f;-><init>(Ljackpal/androidterm/a/c;)V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->ab:Ljackpal/androidterm/a/ac;

    const/4 v2, 0x0

    iput-object v2, p0, Ljackpal/androidterm/a/c;->i:Ljackpal/androidterm/a/y;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->l:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->m:Landroid/graphics/Paint;

    iput v0, p0, Ljackpal/androidterm/a/c;->t:I

    iput v0, p0, Ljackpal/androidterm/a/c;->u:I

    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->N:Landroid/view/GestureDetector;

    invoke-virtual {p0, v1}, Ljackpal/androidterm/a/c;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Ljackpal/androidterm/a/c;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Ljackpal/androidterm/a/c;->setFocusableInTouchMode(Z)V

    iput-object p2, p0, Ljackpal/androidterm/a/c;->e:Ljackpal/androidterm/a/q;

    new-instance v2, Ljackpal/androidterm/a/o;

    invoke-direct {v2, p2}, Ljackpal/androidterm/a/o;-><init>(Ljackpal/androidterm/a/q;)V

    iput-object v2, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    iget-object v2, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {p2, v2}, Ljackpal/androidterm/a/q;->a(Ljackpal/androidterm/a/o;)V

    iget-boolean p2, p0, Ljackpal/androidterm/a/c;->b:Z

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Ljackpal/androidterm/a/c;->b:Z

    iput-boolean v1, p0, Ljackpal/androidterm/a/c;->a:Z

    invoke-direct {p0}, Ljackpal/androidterm/a/c;->k()V

    :cond_0
    invoke-virtual {p0, p3}, Ljackpal/androidterm/a/c;->a(Landroid/util/DisplayMetrics;)V

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ljackpal/androidterm/a/c;->P:Landroid/widget/Scroller;

    iget-object p2, p0, Ljackpal/androidterm/a/c;->T:Ljackpal/androidterm/a/i;

    new-instance p3, Landroid/widget/Scroller;

    invoke-direct {p3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Ljackpal/androidterm/a/i;->a(Ljackpal/androidterm/a/i;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/a/c;)I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Ljackpal/androidterm/a/c;I)I
    .registers 2

    iput p1, p0, Ljackpal/androidterm/a/c;->t:I

    return p1
.end method

.method private a(II)V
    .registers 5

    int-to-float p1, p1

    iget v0, p0, Ljackpal/androidterm/a/c;->f:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/a/c;->q:I

    iget p1, p0, Ljackpal/androidterm/a/c;->c:I

    int-to-float p1, p1

    iget v1, p0, Ljackpal/androidterm/a/c;->f:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/a/c;->r:I

    iget-object p1, p0, Ljackpal/androidterm/a/c;->i:Ljackpal/androidterm/a/y;

    invoke-interface {p1}, Ljackpal/androidterm/a/y;->c()I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/a/c;->h:I

    iget p1, p0, Ljackpal/androidterm/a/c;->h:I

    sub-int/2addr p2, p1

    iget p1, p0, Ljackpal/androidterm/a/c;->g:I

    div-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/a/c;->p:I

    iget p1, p0, Ljackpal/androidterm/a/c;->d:I

    iget p2, p0, Ljackpal/androidterm/a/c;->h:I

    sub-int/2addr p1, p2

    iget p2, p0, Ljackpal/androidterm/a/c;->g:I

    div-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/a/c;->s:I

    iget-object p1, p0, Ljackpal/androidterm/a/c;->e:Ljackpal/androidterm/a/q;

    iget p2, p0, Ljackpal/androidterm/a/c;->q:I

    iget v0, p0, Ljackpal/androidterm/a/c;->p:I

    invoke-virtual {p1, p2, v0}, Ljackpal/androidterm/a/q;->b(II)V

    const/4 p1, 0x0

    iput p1, p0, Ljackpal/androidterm/a/c;->t:I

    iput p1, p0, Ljackpal/androidterm/a/c;->u:I

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Ljackpal/androidterm/a/c;->f:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Ljackpal/androidterm/a/c;->h:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget v2, p0, Ljackpal/androidterm/a/c;->g:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-int p1, p1

    add-int/2addr p1, v1

    const/4 v2, 0x0

    const/16 v3, 0xdf

    if-lez v0, :cond_1

    if-lez p1, :cond_1

    iget v4, p0, Ljackpal/androidterm/a/c;->q:I

    if-gt v0, v4, :cond_1

    iget v4, p0, Ljackpal/androidterm/a/c;->p:I

    if-gt p1, v4, :cond_1

    if-gt v0, v3, :cond_1

    if-le p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-ltz p2, :cond_4

    if-le p2, v3, :cond_2

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    const/4 v3, 0x6

    new-array v4, v3, [B

    const/16 v5, 0x1b

    aput-byte v5, v4, v2

    const/16 v5, 0x5b

    aput-byte v5, v4, v1

    const/4 v1, 0x2

    const/16 v5, 0x4d

    aput-byte v5, v4, v1

    const/4 v1, 0x3

    add-int/lit8 p2, p2, 0x20

    int-to-byte p2, p2

    aput-byte p2, v4, v1

    const/4 p2, 0x4

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v4, p2

    const/4 p2, 0x5

    add-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    aput-byte p1, v4, p2

    iget-object p1, p0, Ljackpal/androidterm/a/c;->e:Ljackpal/androidterm/a/q;

    invoke-virtual {p1, v4, v2, v3}, Ljackpal/androidterm/a/q;->a([BII)V

    :cond_3
    return-void

    :cond_4
    :goto_2
    const-string p1, "EmulatorView"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mouse button_code out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/a/c;Landroid/view/MotionEvent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/a/c;->a(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/a/c;Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/c;->W:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    :cond_0
    iput-object p1, p0, Ljackpal/androidterm/a/c;->W:Ljava/lang/String;

    return-void
.end method

.method private a(IZ)Z
    .registers 4

    iget v0, p0, Ljackpal/androidterm/a/c;->y:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {p1, p2}, Ljackpal/androidterm/a/o;->d(Z)V

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Ljackpal/androidterm/a/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Ljackpal/androidterm/a/c;->v:Z

    return p1
.end method

.method static synthetic b(Ljackpal/androidterm/a/c;I)I
    .registers 2

    iput p1, p0, Ljackpal/androidterm/a/c;->I:I

    return p1
.end method

.method private b(IZ)Z
    .registers 4

    iget v0, p0, Ljackpal/androidterm/a/c;->z:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {p1, p2}, Ljackpal/androidterm/a/o;->e(Z)V

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Ljackpal/androidterm/a/c;)Z
    .registers 1

    iget-boolean p0, p0, Ljackpal/androidterm/a/c;->v:Z

    return p0
.end method

.method static synthetic c(Ljackpal/androidterm/a/c;I)I
    .registers 2

    iput p1, p0, Ljackpal/androidterm/a/c;->K:I

    return p1
.end method

.method static synthetic c(Ljackpal/androidterm/a/c;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/c;->aa:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Ljackpal/androidterm/a/c;I)I
    .registers 2

    iput p1, p0, Ljackpal/androidterm/a/c;->G:I

    return p1
.end method

.method static synthetic d(Ljackpal/androidterm/a/c;)Landroid/widget/Scroller;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/c;->P:Landroid/widget/Scroller;

    return-object p0
.end method

.method private e(I)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v2}, Ljackpal/androidterm/a/x;->a()Ljackpal/androidterm/a/aa;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljackpal/androidterm/a/aa;->b(I)[C

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v2, v1}, Ljackpal/androidterm/a/aa;->d(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    array-length v7, v3

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_0
    aget-char v8, v3, v7

    if-eqz v8, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v8, Landroid/text/SpannableStringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Ljackpal/androidterm/a/aa;->c(I)Z

    move-result v3

    move v7, v5

    const/4 v5, 0x1

    :goto_2
    if-eqz v3, :cond_6

    add-int v3, v1, v5

    invoke-virtual {v2, v3}, Ljackpal/androidterm/a/aa;->b(I)[C

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v2, v3}, Ljackpal/androidterm/a/aa;->d(I)Z

    move-result v10

    if-eqz v7, :cond_3

    if-nez v10, :cond_3

    move v7, v10

    :cond_3
    if-eqz v10, :cond_4

    array-length v10, v9

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_3
    aget-char v11, v9, v10

    if-eqz v11, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9, v6, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3}, Ljackpal/androidterm/a/aa;->c(I)Z

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    sget-object v2, Ljackpal/androidterm/a/a/g;->a:Ljava/util/regex/Pattern;

    sget-object v3, Ljackpal/androidterm/a/c;->S:Landroid/text/util/Linkify$MatchFilter;

    const/4 v9, 0x0

    invoke-static {v8, v2, v9, v3, v9}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v8, v6, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    array-length v3, v2

    if-lez v3, :cond_13

    iget v3, v0, Ljackpal/androidterm/a/c;->q:I

    iget v10, v0, Ljackpal/androidterm/a/c;->t:I

    sub-int/2addr v1, v10

    new-array v10, v5, [[Landroid/text/style/URLSpan;

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v5, :cond_7

    new-array v12, v3, [Landroid/text/style/URLSpan;

    aput-object v12, v10, v11

    aget-object v12, v10, v11

    invoke-static {v12, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_6
    array-length v11, v2

    if-ge v9, v11, :cond_12

    aget-object v11, v2, v9

    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    if-eqz v7, :cond_8

    add-int/lit8 v13, v13, -0x1

    iget v14, v0, Ljackpal/androidterm/a/c;->q:I

    div-int v14, v12, v14

    iget v15, v0, Ljackpal/androidterm/a/c;->q:I

    rem-int/2addr v12, v15

    iget v15, v0, Ljackpal/androidterm/a/c;->q:I

    div-int v15, v13, v15

    iget v6, v0, Ljackpal/androidterm/a/c;->q:I

    rem-int/2addr v13, v6

    move-object/from16 v17, v2

    move/from16 v18, v7

    move v2, v13

    const/4 v6, 0x1

    goto/16 :goto_d

    :cond_8
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7
    if-ge v6, v12, :cond_b

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v16

    if-eqz v16, :cond_9

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v2

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v4, v2}, Ljackpal/androidterm/a/ab;->a(CC)I

    move-result v2

    :goto_8
    add-int/2addr v15, v2

    goto :goto_9

    :cond_9
    move-object/from16 v17, v2

    invoke-static {v4}, Ljackpal/androidterm/a/ab;->d(I)I

    move-result v2

    goto :goto_8

    :goto_9
    if-lt v15, v3, :cond_a

    add-int/lit8 v14, v14, 0x1

    rem-int/2addr v15, v3

    :cond_a
    const/4 v2, 0x1

    add-int/2addr v6, v2

    move-object/from16 v2, v17

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v17, v2

    move v4, v14

    move v2, v15

    :goto_a
    if-ge v12, v13, :cond_e

    invoke-virtual {v8, v12}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v16

    if-eqz v16, :cond_c

    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v7

    invoke-virtual {v8, v12}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v6, v7}, Ljackpal/androidterm/a/ab;->a(CC)I

    move-result v6

    :goto_b
    add-int/2addr v2, v6

    goto :goto_c

    :cond_c
    move/from16 v18, v7

    invoke-static {v6}, Ljackpal/androidterm/a/ab;->d(I)I

    move-result v6

    goto :goto_b

    :goto_c
    if-lt v2, v3, :cond_d

    add-int/lit8 v4, v4, 0x1

    rem-int/2addr v2, v3

    :cond_d
    const/4 v6, 0x1

    add-int/2addr v12, v6

    move/from16 v7, v18

    goto :goto_a

    :cond_e
    move/from16 v18, v7

    const/4 v6, 0x1

    move v12, v15

    move v15, v4

    :goto_d
    move v4, v14

    :goto_e
    if-gt v4, v15, :cond_11

    if-ne v4, v14, :cond_f

    move v7, v12

    goto :goto_f

    :cond_f
    const/4 v7, 0x0

    :goto_f
    if-ne v4, v15, :cond_10

    move v13, v2

    move/from16 v19, v13

    goto :goto_10

    :cond_10
    iget v13, v0, Ljackpal/androidterm/a/c;->q:I

    sub-int/2addr v13, v6

    move/from16 v19, v2

    :goto_10
    aget-object v2, v10, v4

    add-int/2addr v13, v6

    invoke-static {v2, v7, v13, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v19

    goto :goto_e

    :cond_11
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v17

    move/from16 v7, v18

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v5, :cond_13

    iget-object v3, v0, Ljackpal/androidterm/a/c;->R:Ljava/util/Hashtable;

    add-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v6, v10, v2

    invoke-virtual {v3, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_13
    return v5
.end method

.method static synthetic e(Ljackpal/androidterm/a/c;)I
    .registers 1

    iget p0, p0, Ljackpal/androidterm/a/c;->t:I

    return p0
.end method

.method private f(I)Z
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Ljackpal/androidterm/a/c;->x:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic f(Ljackpal/androidterm/a/c;)Z
    .registers 1

    iget-boolean p0, p0, Ljackpal/androidterm/a/c;->w:Z

    return p0
.end method

.method static synthetic g(Ljackpal/androidterm/a/c;)Ljackpal/androidterm/a/x;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    return-object p0
.end method

.method static synthetic h(Ljackpal/androidterm/a/c;)I
    .registers 1

    iget p0, p0, Ljackpal/androidterm/a/c;->I:I

    return p0
.end method

.method static synthetic i(Ljackpal/androidterm/a/c;)I
    .registers 1

    iget p0, p0, Ljackpal/androidterm/a/c;->K:I

    return p0
.end method

.method static synthetic j(Ljackpal/androidterm/a/c;)I
    .registers 1

    iget p0, p0, Ljackpal/androidterm/a/c;->G:I

    return p0
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/c;->e:Ljackpal/androidterm/a/q;

    invoke-direct {p0}, Ljackpal/androidterm/a/c;->m()V

    invoke-virtual {v0}, Ljackpal/androidterm/a/q;->f()Ljackpal/androidterm/a/x;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    iget-object v1, p0, Ljackpal/androidterm/a/c;->ab:Ljackpal/androidterm/a/ac;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/a/q;->a(Ljackpal/androidterm/a/ac;)V

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->requestFocus()Z

    return-void
.end method

.method static synthetic k(Ljackpal/androidterm/a/c;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/a/c;->t:I

    iget v0, p0, Ljackpal/androidterm/a/c;->r:I

    if-lez v0, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->c()I

    move-result v0

    iget-object v1, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v1}, Ljackpal/androidterm/a/x;->c()I

    move-result v1

    iget v2, p0, Ljackpal/androidterm/a/c;->u:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    iput v0, p0, Ljackpal/androidterm/a/c;->u:I

    return-void

    :cond_0
    iget v2, p0, Ljackpal/androidterm/a/c;->r:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Ljackpal/androidterm/a/c;->r:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljackpal/androidterm/a/c;->u:I

    :cond_1
    return-void
.end method

.method static synthetic l(Ljackpal/androidterm/a/c;)Ljackpal/androidterm/a/o;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    return-object p0
.end method

.method private l()V
    .registers 3

    iget-boolean v0, p0, Ljackpal/androidterm/a/c;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ljackpal/androidterm/a/c;->A:Z

    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/a/o;->d(Z)V

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    :cond_0
    iget-boolean v0, p0, Ljackpal/androidterm/a/c;->B:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ljackpal/androidterm/a/c;->B:Z

    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/a/o;->e(Z)V

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    :cond_1
    return-void
.end method

.method static synthetic m(Ljackpal/androidterm/a/c;)Ljackpal/androidterm/a/q;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/c;->e:Ljackpal/androidterm/a/q;

    return-object p0
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/c;->k:Lb/b/c/a/b;

    iget v1, p0, Ljackpal/androidterm/a/c;->j:I

    if-lez v1, :cond_0

    new-instance v1, Ljackpal/androidterm/a/k;

    iget v2, p0, Ljackpal/androidterm/a/c;->j:I

    invoke-direct {v1, v2, v0}, Ljackpal/androidterm/a/k;-><init>(ILb/b/c/a/b;)V

    :goto_0
    iput-object v1, p0, Ljackpal/androidterm/a/c;->i:Ljackpal/androidterm/a/y;

    goto :goto_1

    :cond_0
    new-instance v1, Ljackpal/androidterm/a/b;

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljackpal/androidterm/a/b;-><init>(Landroid/content/res/Resources;Lb/b/c/a/b;)V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Ljackpal/androidterm/a/c;->l:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lb/b/c/a/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Ljackpal/androidterm/a/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lb/b/c/a/b;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ljackpal/androidterm/a/c;->i:Ljackpal/androidterm/a/y;

    invoke-interface {v0}, Ljackpal/androidterm/a/y;->a()F

    move-result v0

    iput v0, p0, Ljackpal/androidterm/a/c;->f:F

    iget-object v0, p0, Ljackpal/androidterm/a/c;->i:Ljackpal/androidterm/a/y;

    invoke-interface {v0}, Ljackpal/androidterm/a/y;->b()I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/a/c;->g:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljackpal/androidterm/a/c;->b(Z)V

    return-void
.end method

.method static synthetic n(Ljackpal/androidterm/a/c;)V
    .registers 1

    invoke-direct {p0}, Ljackpal/androidterm/a/c;->l()V

    return-void
.end method

.method static synthetic o(Ljackpal/androidterm/a/c;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/c;->W:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(FF)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v0

    div-float/2addr p2, v1

    iget v0, p0, Ljackpal/androidterm/a/c;->p:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    iget v0, p0, Ljackpal/androidterm/a/c;->q:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget-object v0, p0, Ljackpal/androidterm/a/c;->R:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    if-eqz p2, :cond_1

    aget-object p1, p2, p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v4
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/a/c;->b(Z)V

    return-void
.end method

.method public final a(I)V
    .registers 3

    int-to-float p1, p1

    iget v0, p0, Ljackpal/androidterm/a/c;->D:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Ljackpal/androidterm/a/c;->j:I

    invoke-direct {p0}, Ljackpal/androidterm/a/c;->m()V

    return-void
.end method

.method public final a(Landroid/util/DisplayMetrics;)V
    .registers 4

    iget v0, p0, Ljackpal/androidterm/a/c;->D:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Ljackpal/androidterm/a/c;->j:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/a/c;->j:I

    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Ljackpal/androidterm/a/c;->D:F

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Ljackpal/androidterm/a/c;->E:F

    return-void
.end method

.method public final a(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    return-void
.end method

.method public final a(Lb/b/c/a/b;)V
    .registers 2

    if-nez p1, :cond_0

    sget-object p1, Ljackpal/androidterm/a/a;->c:Lb/b/c/a/b;

    :cond_0
    iput-object p1, p0, Ljackpal/androidterm/a/c;->k:Lb/b/c/a/b;

    invoke-direct {p0}, Ljackpal/androidterm/a/c;->m()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Ljackpal/androidterm/a/c;->n:Z

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0}, Ljackpal/androidterm/a/o;->a()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/o;->a(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ljackpal/androidterm/a/c;->x:Z

    return-void
.end method

.method public final b(Z)V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/c;->R:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-boolean v0, p0, Ljackpal/androidterm/a/c;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->getHeight()I

    move-result v1

    if-nez p1, :cond_0

    iget p1, p0, Ljackpal/androidterm/a/c;->c:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Ljackpal/androidterm/a/c;->d:I

    if-eq v1, p1, :cond_1

    :cond_0
    iput v0, p0, Ljackpal/androidterm/a/c;->c:I

    iput v1, p0, Ljackpal/androidterm/a/c;->d:I

    iget p1, p0, Ljackpal/androidterm/a/c;->c:I

    iget v0, p0, Ljackpal/androidterm/a/c;->d:I

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/a/c;->a(II)V

    :cond_1
    return-void
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Ljackpal/androidterm/a/c;->y:I

    return-void
.end method

.method public final c(Z)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/o;->b(Z)V

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->f()Z

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/c;->p:I

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->a()Ljackpal/androidterm/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/a/aa;->c()I

    move-result v0

    iget v1, p0, Ljackpal/androidterm/a/c;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Ljackpal/androidterm/a/c;->p:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->a()Ljackpal/androidterm/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/a/aa;->c()I

    move-result v0

    return v0
.end method

.method public final d()Ljackpal/androidterm/a/q;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/c;->e:Ljackpal/androidterm/a/q;

    return-object v0
.end method

.method public final d(I)V
    .registers 2

    iput p1, p0, Ljackpal/androidterm/a/c;->z:I

    return-void
.end method

.method public final d(Z)V
    .registers 2

    iput-boolean p1, p0, Ljackpal/androidterm/a/c;->C:Z

    return-void
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/c;->c:I

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/c;->d:I

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->g()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljackpal/androidterm/a/c;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/a/c;->w:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/a/c;->w:Z

    iget-boolean v0, p0, Ljackpal/androidterm/a/c;->w:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljackpal/androidterm/a/c;->setVerticalScrollBarEnabled(Z)V

    iget-boolean v0, p0, Ljackpal/androidterm/a/c;->w:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Ljackpal/androidterm/a/c;->H:I

    iput v0, p0, Ljackpal/androidterm/a/c;->I:I

    iput v0, p0, Ljackpal/androidterm/a/c;->J:I

    iput v0, p0, Ljackpal/androidterm/a/c;->K:I

    :cond_0
    return-void
.end method

.method public final i()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/a/c;->A:Z

    iget-object v1, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/a/o;->d(Z)V

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    return-void
.end method

.method public final j()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/a/c;->B:Z

    iget-object v1, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/a/o;->e(Z)V

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    iget-boolean v0, p0, Ljackpal/androidterm/a/c;->n:Z

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    new-instance p1, Ljackpal/androidterm/a/g;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p0, v0}, Ljackpal/androidterm/a/g;-><init>(Ljackpal/androidterm/a/c;Landroid/view/View;Z)V

    return-object p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Ljackpal/androidterm/a/c;->U:F

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/a/c;->b(Z)V

    iget-object v2, v0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljackpal/androidterm/a/c;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljackpal/androidterm/a/c;->getHeight()I

    move-result v3

    iget-object v4, v0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v4}, Ljackpal/androidterm/a/x;->d()Z

    move-result v4

    iget-object v5, v0, Ljackpal/androidterm/a/c;->i:Ljackpal/androidterm/a/y;

    invoke-interface {v5, v4}, Ljackpal/androidterm/a/y;->a(Z)V

    if-eqz v4, :cond_1

    iget-object v4, v0, Ljackpal/androidterm/a/c;->l:Landroid/graphics/Paint;

    :goto_0
    move-object v10, v4

    goto :goto_1

    :cond_1
    iget-object v4, v0, Ljackpal/androidterm/a/c;->m:Landroid/graphics/Paint;

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v2

    int-to-float v9, v3

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v0, Ljackpal/androidterm/a/c;->u:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v0, Ljackpal/androidterm/a/c;->f:F

    mul-float v2, v2, v3

    iget v3, v0, Ljackpal/androidterm/a/c;->g:I

    iget v4, v0, Ljackpal/androidterm/a/c;->h:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Ljackpal/androidterm/a/c;->t:I

    iget v5, v0, Ljackpal/androidterm/a/c;->p:I

    add-int v15, v4, v5

    iget-object v4, v0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v4}, Ljackpal/androidterm/a/x;->c()I

    move-result v16

    iget-object v4, v0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v4}, Ljackpal/androidterm/a/x;->b()I

    move-result v14

    iget-boolean v4, v0, Ljackpal/androidterm/a/c;->v:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v4}, Ljackpal/androidterm/a/x;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    :goto_2
    iget-object v4, v0, Ljackpal/androidterm/a/c;->W:Ljava/lang/String;

    iget-object v5, v0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v5}, Ljackpal/androidterm/a/o;->b()I

    move-result v5

    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    move-object/from16 v18, v4

    iget-object v4, v0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v4}, Ljackpal/androidterm/a/o;->c()I

    move-result v19

    iget v4, v0, Ljackpal/androidterm/a/c;->t:I

    move v1, v4

    const/16 v20, 0x0

    :goto_3
    if-ge v1, v15, :cond_9

    const/16 v21, -0x1

    if-ne v1, v14, :cond_4

    if-eqz v17, :cond_4

    move/from16 v10, v16

    goto :goto_4

    :cond_4
    const/4 v10, -0x1

    :goto_4
    iget v4, v0, Ljackpal/androidterm/a/c;->I:I

    if-lt v1, v4, :cond_7

    iget v4, v0, Ljackpal/androidterm/a/c;->K:I

    if-gt v1, v4, :cond_7

    iget v4, v0, Ljackpal/androidterm/a/c;->I:I

    if-ne v1, v4, :cond_5

    iget v4, v0, Ljackpal/androidterm/a/c;->H:I

    goto :goto_5

    :cond_5
    const/4 v4, -0x1

    :goto_5
    iget v5, v0, Ljackpal/androidterm/a/c;->K:I

    if-ne v1, v5, :cond_6

    iget v5, v0, Ljackpal/androidterm/a/c;->J:I

    :goto_6
    move v11, v4

    move v12, v5

    goto :goto_7

    :cond_6
    iget v5, v0, Ljackpal/androidterm/a/c;->q:I

    goto :goto_6

    :cond_7
    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_7
    iget-object v4, v0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v4}, Ljackpal/androidterm/a/x;->a()Ljackpal/androidterm/a/aa;

    move-result-object v4

    iget-object v9, v0, Ljackpal/androidterm/a/c;->i:Ljackpal/androidterm/a/y;

    move v5, v1

    move-object/from16 v6, p1

    move v7, v2

    move v8, v3

    move-object/from16 v13, v18

    move/from16 v22, v14

    move/from16 v14, v19

    invoke-virtual/range {v4 .. v14}, Ljackpal/androidterm/a/aa;->a(ILandroid/graphics/Canvas;FFLjackpal/androidterm/a/y;IIILjava/lang/String;I)V

    iget v4, v0, Ljackpal/androidterm/a/c;->g:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    if-nez v20, :cond_8

    invoke-direct {v0, v1}, Ljackpal/androidterm/a/c;->e(I)I

    move-result v20

    :cond_8
    add-int/lit8 v20, v20, -0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v14, v22

    goto :goto_3

    :cond_9
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    const/4 p2, 0x0

    iput p2, p0, Ljackpal/androidterm/a/c;->U:F

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ljackpal/androidterm/a/c;->T:Ljackpal/androidterm/a/i;

    invoke-virtual {p2, p1, p3, p4}, Ljackpal/androidterm/a/i;->a(Landroid/view/MotionEvent;FF)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljackpal/androidterm/a/c;->P:Landroid/widget/Scroller;

    const/4 v3, 0x0

    iget v4, p0, Ljackpal/androidterm/a/c;->t:I

    const/high16 p1, 0x3e800000    # 0.25f

    mul-float p3, p3, p1

    float-to-int p2, p3

    neg-int v5, p2

    mul-float p4, p4, p1

    float-to-int p1, p4

    neg-int v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object p1, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {p1}, Ljackpal/androidterm/a/x;->a()Ljackpal/androidterm/a/aa;

    move-result-object p1

    invoke-virtual {p1}, Ljackpal/androidterm/a/aa;->d()I

    move-result p1

    neg-int v9, p1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p1, p0, Ljackpal/androidterm/a/c;->Q:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Ljackpal/androidterm/a/c;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/a/c;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/a/c;->b(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/c;->f(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    :try_start_0
    iget-object v1, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v1}, Ljackpal/androidterm/a/o;->b()I

    move-result v1

    iget-object v2, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v2}, Ljackpal/androidterm/a/o;->c()I

    move-result v2

    iget-object v3, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    iget-object v4, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {v4}, Ljackpal/androidterm/a/x;->f()Z

    move-result v4

    invoke-static {p2}, Ljackpal/androidterm/a/o;->a(Landroid/view/KeyEvent;)Z

    move-result v5

    invoke-virtual {v3, p1, p2, v4, v5}, Ljackpal/androidterm/a/o;->a(ILandroid/view/KeyEvent;ZZ)V

    iget-object p1, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {p1}, Ljackpal/androidterm/a/o;->b()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {p1}, Ljackpal/androidterm/a/o;->c()I

    move-result p1

    if-eq p1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 10

    sget-boolean v0, Ljackpal/androidterm/a/c;->L:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0}, Ljackpal/androidterm/a/o;->d()Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x39

    if-eq p1, v5, :cond_3

    const/16 v5, 0x3a

    if-ne p1, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    iget-object v6, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v6}, Ljackpal/androidterm/a/o;->e()Z

    move-result v6

    if-eqz v0, :cond_6

    if-nez v3, :cond_4

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-eqz v4, :cond_6

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/a/c;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/a/c;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_6
    const/16 v0, 0x71

    if-eq p1, v0, :cond_7

    const/16 v0, 0x72

    if-ne p1, v0, :cond_9

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/a/o;->c(Z)V

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0}, Ljackpal/androidterm/a/o;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/a/c;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_b
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/a/c;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/a/c;->a(IZ)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/a/c;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/c;->f(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Ljackpal/androidterm/a/c;->V:Ljackpal/androidterm/a/o;

    invoke-virtual {v0, p1, p2}, Ljackpal/androidterm/a/o;->a(ILandroid/view/KeyEvent;)V

    invoke-direct {p0}, Ljackpal/androidterm/a/c;->l()V

    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->showContextMenu()Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    iget p2, p0, Ljackpal/androidterm/a/c;->U:F

    add-float/2addr p4, p2

    iget p2, p0, Ljackpal/androidterm/a/c;->g:I

    int-to-float p2, p2

    div-float p2, p4, p2

    float-to-int p2, p2

    iget p3, p0, Ljackpal/androidterm/a/c;->g:I

    mul-int p3, p3, p2

    int-to-float p3, p3

    sub-float/2addr p4, p3

    iput p4, p0, Ljackpal/androidterm/a/c;->U:F

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->g()Z

    move-result p3

    if-eqz p3, :cond_3

    :goto_0
    if-lez p2, :cond_1

    const/16 p3, 0x41

    invoke-direct {p0, p1, p3}, Ljackpal/androidterm/a/c;->a(Landroid/view/MotionEvent;I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p2, :cond_2

    const/16 p3, 0x40

    invoke-direct {p0, p1, p3}, Ljackpal/androidterm/a/c;->a(Landroid/view/MotionEvent;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    iget-object p3, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    invoke-virtual {p3}, Ljackpal/androidterm/a/x;->a()Ljackpal/androidterm/a/aa;

    move-result-object p3

    invoke-virtual {p3}, Ljackpal/androidterm/a/aa;->d()I

    move-result p3

    neg-int p3, p3

    iget p4, p0, Ljackpal/androidterm/a/c;->t:I

    add-int/2addr p4, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/a/c;->t:I

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/c;->O:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/a/c;->a(Landroid/view/MotionEvent;I)V

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/a/c;->a(Landroid/view/MotionEvent;I)V

    :cond_1
    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->requestFocus()Z

    return v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    iget-object p1, p0, Ljackpal/androidterm/a/c;->e:Ljackpal/androidterm/a/q;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p0, Ljackpal/androidterm/a/c;->b:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Ljackpal/androidterm/a/c;->a:Z

    if-nez p1, :cond_1

    iput-boolean p2, p0, Ljackpal/androidterm/a/c;->a:Z

    invoke-direct {p0}, Ljackpal/androidterm/a/c;->k()V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljackpal/androidterm/a/c;->b(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Ljackpal/androidterm/a/c;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Ljackpal/androidterm/a/c;->f:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v3, -0x3de00000    # -40.0f

    iget v4, p0, Ljackpal/androidterm/a/c;->E:F

    mul-float v4, v4, v3

    add-float/2addr p1, v4

    iget v3, p0, Ljackpal/androidterm/a/c;->g:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    iget v3, p0, Ljackpal/androidterm/a/c;->t:I

    add-int/2addr p1, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->h()V

    :cond_0
    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->invalidate()V

    goto :goto_1

    :pswitch_0
    iget v3, p0, Ljackpal/androidterm/a/c;->F:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Ljackpal/androidterm/a/c;->F:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, p0, Ljackpal/androidterm/a/c;->G:I

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Ljackpal/androidterm/a/c;->G:I

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput v3, p0, Ljackpal/androidterm/a/c;->H:I

    iput v4, p0, Ljackpal/androidterm/a/c;->I:I

    iput v1, p0, Ljackpal/androidterm/a/c;->J:I

    iput p1, p0, Ljackpal/androidterm/a/c;->K:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La/a/a;->a(Landroid/content/Context;)Ljackpal/androidterm/a/a/c;

    move-result-object p1

    iget-object v0, p0, Ljackpal/androidterm/a/c;->o:Ljackpal/androidterm/a/x;

    iget v1, p0, Ljackpal/androidterm/a/c;->H:I

    iget v3, p0, Ljackpal/androidterm/a/c;->I:I

    iget v4, p0, Ljackpal/androidterm/a/c;->J:I

    iget v5, p0, Ljackpal/androidterm/a/c;->K:I

    invoke-virtual {v0, v1, v3, v4, v5}, Ljackpal/androidterm/a/x;->a(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljackpal/androidterm/a/a/c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iput v1, p0, Ljackpal/androidterm/a/c;->F:I

    iput p1, p0, Ljackpal/androidterm/a/c;->G:I

    iput v1, p0, Ljackpal/androidterm/a/c;->H:I

    iput p1, p0, Ljackpal/androidterm/a/c;->I:I

    iget p1, p0, Ljackpal/androidterm/a/c;->H:I

    iput p1, p0, Ljackpal/androidterm/a/c;->J:I

    iget p1, p0, Ljackpal/androidterm/a/c;->I:I

    iput p1, p0, Ljackpal/androidterm/a/c;->K:I

    :goto_1
    return v2

    :cond_1
    iget-object v0, p0, Ljackpal/androidterm/a/c;->N:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
