.class final Lb/b/e/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/d/a;

.field private b:[Lb/b/d/a/e;

.field private c:I

.field private d:Lb/b/e/o;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/d/a;

    invoke-direct {v0}, Lb/b/d/a;-><init>()V

    iput-object v0, p0, Lb/b/e/q;->a:Lb/b/d/a;

    iget-object v0, p0, Lb/b/e/q;->a:Lb/b/d/a;

    new-instance v1, Lb/b/e/t;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lb/b/e/t;-><init>(Lb/b/e/q;B)V

    invoke-virtual {v0, v1}, Lb/b/d/a;->a(Lb/b/d/c;)V

    iget-object v0, p0, Lb/b/e/q;->a:Lb/b/d/a;

    new-instance v1, Lb/b/e/w;

    invoke-direct {v1, p0, v2}, Lb/b/e/w;-><init>(Lb/b/e/q;B)V

    invoke-virtual {v0, v1}, Lb/b/d/a;->b(Lb/b/d/c;)V

    iget-object v0, p0, Lb/b/e/q;->a:Lb/b/d/a;

    new-instance v1, Lb/b/e/x;

    invoke-direct {v1, p0, v2}, Lb/b/e/x;-><init>(Lb/b/e/q;B)V

    invoke-virtual {v0, v1}, Lb/b/d/a;->c(Lb/b/d/c;)V

    iget-object v0, p0, Lb/b/e/q;->a:Lb/b/d/a;

    new-instance v1, Lb/b/e/s;

    invoke-direct {v1, p0, v2}, Lb/b/e/s;-><init>(Lb/b/e/q;B)V

    invoke-virtual {v0, v1}, Lb/b/d/a;->d(Lb/b/d/c;)V

    iget-object v0, p0, Lb/b/e/q;->a:Lb/b/d/a;

    new-instance v1, Lb/b/e/v;

    invoke-direct {v1, p0, v2}, Lb/b/e/v;-><init>(Lb/b/e/q;B)V

    invoke-virtual {v0, v1}, Lb/b/d/a;->e(Lb/b/d/c;)V

    iget-object v0, p0, Lb/b/e/q;->a:Lb/b/d/a;

    new-instance v1, Lb/b/e/u;

    invoke-direct {v1, p0, v2}, Lb/b/e/u;-><init>(Lb/b/e/q;B)V

    invoke-virtual {v0, v1}, Lb/b/d/a;->f(Lb/b/d/c;)V

    iget-object v0, p0, Lb/b/e/q;->a:Lb/b/d/a;

    new-instance v1, Lb/b/e/r;

    invoke-direct {v1, p0, v2}, Lb/b/e/r;-><init>(Lb/b/e/q;B)V

    invoke-virtual {v0, v1}, Lb/b/d/a;->g(Lb/b/d/c;)V

    return-void
.end method

.method static synthetic a(ZI)V
    .registers 4

    if-nez p0, :cond_1

    const p0, 0xffff

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lb/a/t;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot merge new index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " into a non-jumbo instruction!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/a/t;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lb/b/e/q;)[Lb/b/d/a/e;
    .registers 1

    iget-object p0, p0, Lb/b/e/q;->b:[Lb/b/d/a/e;

    return-object p0
.end method

.method static synthetic b(Lb/b/e/q;)I
    .registers 3

    iget v0, p0, Lb/b/e/q;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/b/e/q;->c:I

    return v0
.end method

.method static synthetic c(Lb/b/e/q;)Lb/b/e/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/q;->d:Lb/b/e/o;

    return-object p0
.end method


# virtual methods
.method public final a(Lb/b/e/o;[S)[S
    .registers 6

    invoke-static {p2}, Lb/b/d/a/e;->a([S)[Lb/b/d/a/e;

    move-result-object p2

    array-length v0, p2

    iput-object p1, p0, Lb/b/e/q;->d:Lb/b/e/o;

    new-array p1, v0, [Lb/b/d/a/e;

    iput-object p1, p0, Lb/b/e/q;->b:[Lb/b/d/a/e;

    const/4 p1, 0x0

    iput p1, p0, Lb/b/e/q;->c:I

    iget-object v1, p0, Lb/b/e/q;->a:Lb/b/d/a;

    invoke-virtual {v1, p2}, Lb/b/d/a;->a([Lb/b/d/a/e;)V

    new-instance p2, Lb/b/d/a/az;

    invoke-direct {p2, v0}, Lb/b/d/a/az;-><init>(I)V

    iget-object v0, p0, Lb/b/e/q;->b:[Lb/b/d/a/e;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Lb/b/d/a/e;->a(Lb/b/d/a/d;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/e/q;->d:Lb/b/e/o;

    invoke-virtual {p2}, Lb/b/d/a/az;->c()[S

    move-result-object p1

    return-object p1
.end method
