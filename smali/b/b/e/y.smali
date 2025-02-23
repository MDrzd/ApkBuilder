.class final Lb/b/e/y;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Comparator;


# instance fields
.field private final b:Lb/a/i;

.field private final c:Lb/b/e/o;

.field private final d:Lcom/gmail/heagoo/common/ab;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/e/z;

    invoke-direct {v0}, Lb/b/e/z;-><init>()V

    sput-object v0, Lb/b/e/y;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lb/a/i;Lb/b/e/o;Lcom/gmail/heagoo/common/ab;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/b/e/y;->e:I

    iput-object p1, p0, Lb/b/e/y;->b:Lb/a/i;

    iput-object p2, p0, Lb/b/e/y;->c:Lb/b/e/o;

    iput-object p3, p0, Lb/b/e/y;->d:Lcom/gmail/heagoo/common/ab;

    return-void
.end method

.method static synthetic a(Lb/b/e/y;)I
    .registers 1

    iget p0, p0, Lb/b/e/y;->e:I

    return p0
.end method


# virtual methods
.method public final a()Lb/a/i;
    .registers 2

    iget-object v0, p0, Lb/b/e/y;->b:Lb/a/i;

    return-object v0
.end method

.method public final a([Lb/b/e/y;)Z
    .registers 11

    iget-object v0, p0, Lb/b/e/y;->d:Lcom/gmail/heagoo/common/ab;

    invoke-virtual {v0}, Lcom/gmail/heagoo/common/ab;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/e/y;->d:Lcom/gmail/heagoo/common/ab;

    invoke-virtual {v0}, Lcom/gmail/heagoo/common/ab;->c()I

    move-result v0

    iget-object v4, p0, Lb/b/e/y;->d:Lcom/gmail/heagoo/common/ab;

    invoke-virtual {v4}, Lcom/gmail/heagoo/common/ab;->b()I

    move-result v4

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lb/b/e/y;->d:Lcom/gmail/heagoo/common/ab;

    invoke-virtual {v0}, Lcom/gmail/heagoo/common/ab;->c()I

    move-result v0

    aget-object v0, p1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v4, v0, Lb/b/e/y;->e:I

    if-ne v4, v1, :cond_2

    return v2

    :cond_2
    iget v0, v0, Lb/b/e/y;->e:I

    :goto_0
    iget-object v4, p0, Lb/b/e/y;->d:Lcom/gmail/heagoo/common/ab;

    invoke-virtual {v4}, Lcom/gmail/heagoo/common/ab;->e()[S

    move-result-object v4

    array-length v5, v4

    move v6, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_5

    aget-short v7, v4, v0

    aget-object v7, p1, v7

    if-nez v7, :cond_3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    :cond_3
    iget v8, v7, Lb/b/e/y;->e:I

    if-ne v8, v1, :cond_4

    return v2

    :cond_4
    iget v7, v7, Lb/b/e/y;->e:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v6, v3

    iput v6, p0, Lb/b/e/y;->e:I

    return v3

    :cond_6
    new-instance p1, Lb/a/s;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class with type index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/b/e/y;->d:Lcom/gmail/heagoo/common/ab;

    invoke-virtual {v1}, Lcom/gmail/heagoo/common/ab;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extends itself"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lb/b/e/o;
    .registers 2

    iget-object v0, p0, Lb/b/e/y;->c:Lb/b/e/o;

    return-object v0
.end method

.method public final c()Lcom/gmail/heagoo/common/ab;
    .registers 2

    iget-object v0, p0, Lb/b/e/y;->d:Lcom/gmail/heagoo/common/ab;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lb/b/e/y;->d:Lcom/gmail/heagoo/common/ab;

    invoke-virtual {v0}, Lcom/gmail/heagoo/common/ab;->b()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 3

    iget v0, p0, Lb/b/e/y;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
