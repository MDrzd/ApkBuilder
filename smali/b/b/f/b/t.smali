.class final Lb/b/f/b/t;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lb/b/f/d/d;

.field private c:Lb/b/f/b/n;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lb/b/f/b/t;-><init>()V

    return-void
.end method

.method static synthetic a(Lb/b/f/b/t;)I
    .registers 1

    iget p0, p0, Lb/b/f/b/t;->a:I

    return p0
.end method

.method static synthetic b(Lb/b/f/b/t;)Lb/b/f/d/d;
    .registers 1

    iget-object p0, p0, Lb/b/f/b/t;->b:Lb/b/f/d/d;

    return-object p0
.end method

.method static synthetic c(Lb/b/f/b/t;)Lb/b/f/b/n;
    .registers 1

    iget-object p0, p0, Lb/b/f/b/t;->c:Lb/b/f/b/n;

    return-object p0
.end method


# virtual methods
.method public final a()Lb/b/f/b/r;
    .registers 6

    new-instance v0, Lb/b/f/b/r;

    iget v1, p0, Lb/b/f/b/t;->a:I

    iget-object v2, p0, Lb/b/f/b/t;->b:Lb/b/f/d/d;

    iget-object v3, p0, Lb/b/f/b/t;->c:Lb/b/f/b/n;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lb/b/f/b/r;-><init>(ILb/b/f/d/d;Lb/b/f/b/n;B)V

    return-object v0
.end method

.method public final a(ILb/b/f/d/d;Lb/b/f/b/n;)V
    .registers 4

    iput p1, p0, Lb/b/f/b/t;->a:I

    iput-object p2, p0, Lb/b/f/b/t;->b:Lb/b/f/d/d;

    iput-object p3, p0, Lb/b/f/b/t;->c:Lb/b/f/b/n;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lb/b/f/b/r;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lb/b/f/b/r;

    iget v0, p0, Lb/b/f/b/t;->a:I

    iget-object v1, p0, Lb/b/f/b/t;->b:Lb/b/f/d/d;

    iget-object v2, p0, Lb/b/f/b/t;->c:Lb/b/f/b/n;

    invoke-static {p1, v0, v1, v2}, Lb/b/f/b/r;->a(Lb/b/f/b/r;ILb/b/f/d/d;Lb/b/f/b/n;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lb/b/f/b/t;->a:I

    iget-object v1, p0, Lb/b/f/b/t;->b:Lb/b/f/d/d;

    iget-object v2, p0, Lb/b/f/b/t;->c:Lb/b/f/b/n;

    invoke-static {v0, v1, v2}, Lb/b/f/b/r;->c(ILb/b/f/d/d;Lb/b/f/b/n;)I

    move-result v0

    return v0
.end method
