.class final Lb/a/m;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field private synthetic a:Lb/a/i;


# direct methods
.method private constructor <init>(Lb/a/i;)V
    .registers 2

    iput-object p1, p0, Lb/a/m;->a:Lb/a/i;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/i;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/a/m;-><init>(Lb/a/i;)V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lb/a/m;->a:Lb/a/i;

    invoke-static {v0}, Lb/a/i;->a(Lb/a/i;)Lb/a/ac;

    move-result-object v0

    iget-object v0, v0, Lb/a/ac;->f:Lb/a/ad;

    iget v0, v0, Lb/a/ad;->b:I

    invoke-static {p1, v0}, Lb/a/i;->a(II)V

    iget-object v0, p0, Lb/a/m;->a:Lb/a/i;

    iget-object v1, p0, Lb/a/m;->a:Lb/a/i;

    invoke-static {v1}, Lb/a/i;->a(Lb/a/i;)Lb/a/ac;

    move-result-object v1

    iget-object v1, v1, Lb/a/ac;->f:Lb/a/ad;

    iget v1, v1, Lb/a/ad;->c:I

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/o;->i()Lb/a/aa;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lb/a/m;->a:Lb/a/i;

    invoke-static {v0}, Lb/a/i;->a(Lb/a/i;)Lb/a/ac;

    move-result-object v0

    iget-object v0, v0, Lb/a/ac;->f:Lb/a/ad;

    iget v0, v0, Lb/a/ad;->b:I

    return v0
.end method
