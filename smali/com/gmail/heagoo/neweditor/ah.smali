.class public Lcom/gmail/heagoo/neweditor/ah;
.super Ljava/lang/Object;


# static fields
.field private static synthetic m:Z


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Lcom/gmail/heagoo/neweditor/v;

.field private c:Lcom/gmail/heagoo/neweditor/ag;

.field private d:Lcom/gmail/heagoo/neweditor/ab;

.field private e:Lcom/gmail/heagoo/neweditor/ai;

.field private f:Lcom/gmail/heagoo/neweditor/s;

.field private final g:Lcom/gmail/heagoo/neweditor/ab;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/gmail/heagoo/neweditor/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/gmail/heagoo/neweditor/ah;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->a:Ljava/util/Map;

    new-instance v0, Lcom/gmail/heagoo/neweditor/ab;

    invoke-direct {v0}, Lcom/gmail/heagoo/neweditor/ab;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    return-void
.end method

.method private a(Lcom/gmail/heagoo/common/p;Lcom/gmail/heagoo/common/p;)B
    .registers 4

    iget-byte v0, p1, Lcom/gmail/heagoo/common/p;->f:B

    packed-switch v0, :pswitch_data_0

    iget-byte p1, p1, Lcom/gmail/heagoo/common/p;->f:B

    return p1

    :pswitch_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/v;->j()B

    move-result p1

    return p1

    :pswitch_1
    iget-byte p1, p2, Lcom/gmail/heagoo/common/p;->j:B

    return p1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    iget v1, v1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iget-byte v0, v0, Lcom/gmail/heagoo/common/p;->j:B

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v3, v3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v4, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/v;->f()Lcom/gmail/heagoo/neweditor/s;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/ai;->a(Lcom/gmail/heagoo/common/p;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/gmail/heagoo/neweditor/ag;BIILcom/gmail/heagoo/neweditor/ai;)V
    .registers 9

    add-int/2addr p4, p3

    move v0, p3

    :goto_0
    if-ge p3, p4, :cond_2

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v2, v2, Lcom/gmail/heagoo/neweditor/ab;->c:I

    add-int/2addr v2, p3

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, p3, :cond_0

    sub-int v1, p3, v0

    invoke-interface {p1, p2, v0, v1, p5}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0, p5}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    add-int/lit8 v0, p3, 0x1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    if-eq v0, p4, :cond_3

    sub-int/2addr p4, v0

    invoke-interface {p1, p2, v0, p4, p5}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    :cond_3
    return-void
.end method

.method private a(Z)V
    .registers 9

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/v;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v5, v5, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    aget-char v5, v5, v1

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/v;->h()Ljava/util/regex/Pattern;

    move-result-object v1

    if-eqz v4, :cond_4

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v2, v2, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v3, v3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v5, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iput v5, v4, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iput v0, v4, Lcom/gmail/heagoo/neweditor/ab;->b:I

    new-instance v4, Lcom/gmail/heagoo/neweditor/ac;

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    invoke-direct {v4, v5}, Lcom/gmail/heagoo/neweditor/ac;-><init>(Lcom/gmail/heagoo/neweditor/ab;)V

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iput v3, v4, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iput v2, v3, Lcom/gmail/heagoo/neweditor/ab;->b:I

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    const/4 v1, 0x5

    :goto_3
    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v3, v3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {p1, v1, v2, v0, v3}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    iget p1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    return-void

    :cond_5
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/gmail/heagoo/neweditor/s;->a(Lcom/gmail/heagoo/neweditor/ab;II)B

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/v;->j()B

    move-result v1

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v3, v3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {p1, v1, v2, v0, v3}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    iget p1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    :cond_7
    return-void
.end method

.method private a(II)Z
    .registers 6

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget p2, p2, Lcom/gmail/heagoo/neweditor/ab;->c:I

    if-eq p1, p2, :cond_2

    return v2

    :cond_0
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget p2, p0, Lcom/gmail/heagoo/neweditor/ah;->k:I

    if-eq p1, p2, :cond_2

    return v2

    :cond_1
    const/16 v0, 0x8

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_2

    iget p2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    if-eq p1, p2, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/gmail/heagoo/common/p;)Z
    .registers 16

    iget-object v0, p1, Lcom/gmail/heagoo/common/p;->l:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/gmail/heagoo/common/p;->k:[C

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v2, p1, Lcom/gmail/heagoo/common/p;->k:[C

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    array-length v2, v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/neweditor/ah;->c(Lcom/gmail/heagoo/common/p;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_0
    const/4 v0, -0x1

    iget-object v2, p1, Lcom/gmail/heagoo/common/p;->l:[C

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v3, v3, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v4, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    aget-char v3, v3, v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget v0, p1, Lcom/gmail/heagoo/common/p;->a:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    :goto_0
    iget v3, p1, Lcom/gmail/heagoo/common/p;->h:I

    invoke-direct {p0, v0, v3}, Lcom/gmail/heagoo/neweditor/ah;->a(II)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget v0, p1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v5, p1, Lcom/gmail/heagoo/common/p;->g:[C

    iput-object v5, v0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iput v1, v0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v5, v5, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    array-length v5, v5

    iput v5, v0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget v0, v0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v5, v5, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v5}, Lcom/gmail/heagoo/neweditor/v;->e()Z

    move-result v5

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v7, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v8, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v8, v8, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    invoke-static {v5, v6, v7, v8}, La/a/a;->a(ZLcom/gmail/heagoo/neweditor/ab;I[C)Z

    move-result v5

    if-nez v5, :cond_4

    return v1

    :cond_4
    move-object v5, v4

    move-object v6, v5

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/gmail/heagoo/neweditor/ac;

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v6, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v7, v7, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v7, v7, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget v8, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v9, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v9, v9, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-direct {v0, v5, v6, v7}, Lcom/gmail/heagoo/neweditor/ac;-><init>(Lcom/gmail/heagoo/neweditor/ab;II)V

    iget-object v5, p1, Lcom/gmail/heagoo/common/p;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    :cond_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-nez v6, :cond_7

    move-object v6, v5

    move-object v5, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    move-object v13, v5

    move-object v5, v0

    move v0, v6

    move-object v6, v13

    :goto_1
    iget v7, p1, Lcom/gmail/heagoo/common/p;->a:I

    const/16 v8, 0x800

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_8

    iget p1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget v0, v0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    goto/16 :goto_7

    :cond_8
    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v7, v7, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v7, v7, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    invoke-direct {p0, v7}, Lcom/gmail/heagoo/neweditor/ah;->b(Lcom/gmail/heagoo/common/p;)Z

    :cond_9
    iget v7, p1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/2addr v7, v2

    if-eq v7, v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-direct {p0, v1}, Lcom/gmail/heagoo/neweditor/ah;->a(Z)V

    iget v1, p1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_12

    const/4 v7, 0x2

    if-eq v1, v7, :cond_f

    if-eq v1, v2, :cond_d

    const/16 v2, 0x8

    if-eq v1, v2, :cond_c

    const/16 v2, 0x10

    if-ne v1, v2, :cond_b

    goto :goto_2

    :cond_b
    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "Unhandled major action"

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    invoke-direct {p0, p1, p1}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/common/p;Lcom/gmail/heagoo/common/p;)B

    move-result v2

    iget v5, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v6, v6, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget v6, v6, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {v1, v2, v5, v6, v7}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iput-object v4, v1, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-virtual {v1, p1}, Lcom/gmail/heagoo/neweditor/ai;->a(Lcom/gmail/heagoo/common/p;)V

    goto/16 :goto_6

    :cond_d
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iput-object v4, v1, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iget-byte v2, p1, Lcom/gmail/heagoo/common/p;->j:B

    iget v4, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v5, v5, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v6, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    :cond_e
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    invoke-direct {p0, p1, p1}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/common/p;Lcom/gmail/heagoo/common/p;)B

    move-result p1

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v4, v4, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget v4, v4, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {v1, p1, v2, v4, v5}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    goto/16 :goto_6

    :cond_f
    :goto_2
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-virtual {v1, p1}, Lcom/gmail/heagoo/neweditor/ai;->a(Lcom/gmail/heagoo/common/p;)V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    invoke-direct {p0, p1, v1}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/common/p;Lcom/gmail/heagoo/common/p;)B

    move-result v9

    iget v1, p1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_10

    iget-object v8, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v2, v2, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int v10, v1, v2

    iget-object v12, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    move-object v7, p0

    move v11, v0

    invoke-direct/range {v7 .. v12}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/neweditor/ag;BIILcom/gmail/heagoo/neweditor/ai;)V

    goto :goto_3

    :cond_10
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v7, v7, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v2, v7

    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {v1, v9, v2, v0, v7}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    :goto_3
    if-eqz v5, :cond_11

    iget-object v1, p1, Lcom/gmail/heagoo/common/p;->c:[C

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/gmail/heagoo/common/p;->c:[C

    invoke-static {v6, v1}, Lcom/gmail/heagoo/neweditor/ah;->a(Ljava/util/regex/Matcher;[C)[C

    move-result-object v4

    :cond_11
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iput-object v4, v1, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    new-instance v1, Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-direct {v1, p1, v2}, Lcom/gmail/heagoo/neweditor/ai;-><init>(Lcom/gmail/heagoo/neweditor/v;Lcom/gmail/heagoo/neweditor/ai;)V

    goto :goto_5

    :cond_12
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iput-object v4, v1, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    iget v1, p1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_13

    iget-object v8, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iget-byte v9, p1, Lcom/gmail/heagoo/common/p;->j:B

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v2, v2, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int v10, v1, v2

    iget-object v12, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    move-object v7, p0

    move v11, v0

    invoke-direct/range {v7 .. v12}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/neweditor/ag;BIILcom/gmail/heagoo/neweditor/ai;)V

    goto :goto_4

    :cond_13
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iget-byte v2, p1, Lcom/gmail/heagoo/common/p;->j:B

    iget v4, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v5, v5, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {v1, v2, v4, v0, v5}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    :goto_4
    iget-object v1, p1, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    if-eqz v1, :cond_14

    new-instance v1, Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    invoke-direct {v1, p1, v2}, Lcom/gmail/heagoo/neweditor/ai;-><init>(Lcom/gmail/heagoo/neweditor/v;Lcom/gmail/heagoo/neweditor/ai;)V

    :goto_5
    iput-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/v;->f()Lcom/gmail/heagoo/neweditor/s;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    :cond_14
    :goto_6
    iget p1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    sub-int/2addr v0, v3

    add-int/2addr p1, v0

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget p1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    :goto_7
    return v3

    :cond_15
    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "Can\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/util/regex/Matcher;[C)[C
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_c

    aget-char v3, p1, v2

    const/16 v4, 0x24

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const/16 v6, 0x7e

    if-ne v3, v6, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_1
    :goto_2
    array-length v6, p1

    sub-int/2addr v6, v5

    if-ne v2, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v2, 0x1

    aget-char v7, p1, v6

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    if-ne v3, v4, :cond_4

    add-int/lit8 v7, v7, -0x30

    invoke-virtual {p0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, -0x30

    invoke-virtual {p0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_b

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7d

    const/16 v7, 0x7b

    const/16 v8, 0x5d

    const/16 v9, 0x5b

    const/16 v10, 0x3e

    const/16 v11, 0x3c

    if-eq v3, v11, :cond_a

    if-eq v3, v10, :cond_9

    if-eq v3, v9, :cond_8

    if-eq v3, v8, :cond_7

    if-eq v3, v7, :cond_6

    if-eq v3, v4, :cond_5

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_3

    :pswitch_0
    const/16 v3, 0x28

    goto :goto_3

    :pswitch_1
    const/16 v3, 0x29

    goto :goto_3

    :cond_5
    const/16 v3, 0x7b

    goto :goto_3

    :cond_6
    const/16 v3, 0x7d

    goto :goto_3

    :cond_7
    const/16 v3, 0x5b

    goto :goto_3

    :cond_8
    const/16 v3, 0x5d

    goto :goto_3

    :cond_9
    const/16 v3, 0x3c

    goto :goto_3

    :cond_a
    const/16 v3, 0x3e

    :goto_3
    if-nez v3, :cond_b

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move v2, v6

    :goto_5
    add-int/2addr v2, v5

    goto :goto_0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    new-array p0, p0, [C

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, v1, p1, p0, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/gmail/heagoo/common/p;)Z
    .registers 7

    iget v0, p1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    :goto_0
    iget v1, p1, Lcom/gmail/heagoo/common/p;->d:I

    invoke-direct {p0, v0, v1}, Lcom/gmail/heagoo/neweditor/ah;->a(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    :goto_1
    iput-object v2, v0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v2, p1, Lcom/gmail/heagoo/common/p;->c:[C

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iput v1, v0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    array-length v2, v2

    iput v2, v0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/v;->e()Z

    move-result v0

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v4, v4, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    invoke-static {v0, v2, v3, v4}, La/a/a;->a(ZLcom/gmail/heagoo/neweditor/ab;I[C)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    sget-boolean v0, Lcom/gmail/heagoo/neweditor/ah;->m:Z

    if-nez v0, :cond_5

    iget p1, p1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit16 p1, p1, 0x800

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    iget p1, p1, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    iget-byte v0, v0, Lcom/gmail/heagoo/common/p;->j:B

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v2, v2, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    :cond_6
    iget p1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/neweditor/ai;->a(Lcom/gmail/heagoo/common/p;)V

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method private c(Lcom/gmail/heagoo/common/p;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/gmail/heagoo/common/p;->k:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    iget-object v3, p1, Lcom/gmail/heagoo/common/p;->k:[C

    aget-char v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/gmail/heagoo/neweditor/ai;Lcom/gmail/heagoo/neweditor/ag;Lcom/gmail/heagoo/neweditor/ab;)Lcom/gmail/heagoo/neweditor/ai;
    .registers 13

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iput-object p3, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v0, p3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget v0, p3, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget v1, p3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ah;->i:I

    new-instance v0, Lcom/gmail/heagoo/neweditor/ai;

    invoke-direct {v0}, Lcom/gmail/heagoo/neweditor/ai;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->b:Lcom/gmail/heagoo/neweditor/v;

    iput-object v0, p1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/v;->i()Lcom/gmail/heagoo/common/p;

    move-result-object v0

    iput-object v0, p1, Lcom/gmail/heagoo/neweditor/ai;->e:Lcom/gmail/heagoo/common/p;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, p1, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, p1, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/ai;->a(Lcom/gmail/heagoo/common/p;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, p1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    iput-object p1, v0, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/v;->f()Lcom/gmail/heagoo/neweditor/s;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ah;->l:Z

    iget v0, p3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ah;->k:I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/v;->d()I

    move-result v0

    iget v1, p3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iput v1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->i:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_f

    if-ltz v0, :cond_1

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v3, p3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_1

    if-nez v1, :cond_1

    new-instance v1, Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/v;->j()B

    move-result v2

    invoke-static {v2}, Lcom/gmail/heagoo/neweditor/v;->a(B)Lcom/gmail/heagoo/neweditor/v;

    move-result-object v2

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-direct {v1, v2, v3}, Lcom/gmail/heagoo/neweditor/ai;-><init>(Lcom/gmail/heagoo/neweditor/v;Lcom/gmail/heagoo/neweditor/ai;)V

    iput-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/v;->f()Lcom/gmail/heagoo/neweditor/s;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->e:Lcom/gmail/heagoo/common/p;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->e:Lcom/gmail/heagoo/common/p;

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/common/p;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_2
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    iget-object v3, v2, Lcom/gmail/heagoo/common/p;->c:[C

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v6, v6, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iput-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v6, v6, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v6}, Lcom/gmail/heagoo/neweditor/v;->f()Lcom/gmail/heagoo/neweditor/s;

    move-result-object v6

    iput-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/neweditor/ah;->b(Lcom/gmail/heagoo/common/p;)Z

    move-result v2

    iput-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v3, v3, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v3}, Lcom/gmail/heagoo/neweditor/v;->f()Lcom/gmail/heagoo/neweditor/s;

    move-result-object v3

    iput-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/neweditor/ah;->b(Lcom/gmail/heagoo/common/p;)Z

    :cond_3
    invoke-direct {p0, v5}, Lcom/gmail/heagoo/neweditor/ah;->a(Z)V

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/ai;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/neweditor/ai;

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v3, v3, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v6, v6, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    invoke-direct {p0, v3, v6}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/common/p;Lcom/gmail/heagoo/common/p;)B

    move-result v3

    iget v6, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget v7, v7, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget v7, v7, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget-object v8, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {v2, v3, v6, v7, v8}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/v;->f()Lcom/gmail/heagoo/neweditor/s;

    move-result-object v2

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-virtual {v2, v4}, Lcom/gmail/heagoo/neweditor/ai;->a(Lcom/gmail/heagoo/common/p;)V

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget v3, v3, Lcom/gmail/heagoo/neweditor/ab;->b:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->g:Lcom/gmail/heagoo/neweditor/ab;

    iget v3, v3, Lcom/gmail/heagoo/neweditor/ab;->b:I

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_d

    :cond_5
    iget-object v2, p3, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v3, v3, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v3, v2}, Lcom/gmail/heagoo/neweditor/v;->a(Ljava/lang/Character;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmail/heagoo/common/p;

    invoke-direct {p0, v4}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/common/p;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v2, p0, Lcom/gmail/heagoo/neweditor/ah;->l:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/gmail/heagoo/neweditor/ah;->k:I

    :cond_7
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/neweditor/ah;->b(Lcom/gmail/heagoo/common/p;)Z

    :cond_8
    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/ah;->a()V

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/neweditor/ah;->a(Z)V

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/v;->j()B

    move-result v2

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget v4, p3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v6, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {p2, v2, v3, v4, v6}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    :cond_9
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/v;->j()B

    move-result v2

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget v4, p3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {p2, v2, v3, v5, v4}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v3, v3, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v3}, Lcom/gmail/heagoo/neweditor/v;->c()I

    move-result v3

    if-eqz v3, :cond_d

    :cond_b
    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v3, v3, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v3}, Lcom/gmail/heagoo/neweditor/v;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/neweditor/ah;->b(Lcom/gmail/heagoo/common/p;)Z

    :cond_c
    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/ah;->a()V

    invoke-direct {p0, v5}, Lcom/gmail/heagoo/neweditor/ah;->a(Z)V

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, v2, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/v;->j()B

    move-result v2

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    iget v4, p3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {p2, v2, v3, v5, v4}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/gmail/heagoo/neweditor/ah;->h:I

    :cond_d
    iput-boolean v5, p0, Lcom/gmail/heagoo/neweditor/ah;->l:Z

    :cond_e
    :goto_4
    iget v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lcom/gmail/heagoo/neweditor/ah;->i:I

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/neweditor/ah;->b(Lcom/gmail/heagoo/common/p;)Z

    :cond_10
    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/ah;->a()V

    invoke-direct {p0, v5}, Lcom/gmail/heagoo/neweditor/ah;->a(Z)V

    :goto_5
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz v0, :cond_11

    iget v0, v0, Lcom/gmail/heagoo/common/p;->a:I

    const/16 v2, 0x200

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_12

    :cond_11
    if-eqz v1, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/v;->f()Lcom/gmail/heagoo/neweditor/s;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->f:Lcom/gmail/heagoo/neweditor/s;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-virtual {v0, v4}, Lcom/gmail/heagoo/neweditor/ai;->a(Lcom/gmail/heagoo/common/p;)V

    goto :goto_5

    :cond_13
    const/16 v0, 0x7f

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ah;->j:I

    iget p3, p3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr v1, p3

    iget-object p3, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {p2, v0, v1, p1, p3}, Lcom/gmail/heagoo/neweditor/ag;->a(BIILcom/gmail/heagoo/neweditor/ai;)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/ai;->a()Lcom/gmail/heagoo/neweditor/ai;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;

    invoke-interface {p2, p1}, Lcom/gmail/heagoo/neweditor/ag;->a(Lcom/gmail/heagoo/neweditor/ai;)V

    iput-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->c:Lcom/gmail/heagoo/neweditor/ag;

    iput-object v4, p0, Lcom/gmail/heagoo/neweditor/ah;->d:Lcom/gmail/heagoo/neweditor/ab;

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->e:Lcom/gmail/heagoo/neweditor/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/v;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/neweditor/v;

    return-object p1
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/v;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ah;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/v;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ah;->b:Lcom/gmail/heagoo/neweditor/v;

    :cond_0
    return-void
.end method
