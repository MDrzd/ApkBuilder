.class final Lb/b/f/b/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/BitSet;

.field private final b:Lb/b/f/b/u;

.field private c:I

.field private final d:Lb/b/f/b/u;

.field private e:Z


# direct methods
.method private constructor <init>(Lb/b/f/b/u;Ljava/util/BitSet;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/f/b/v;->b:Lb/b/f/b/u;

    iput-object p2, p0, Lb/b/f/b/v;->a:Ljava/util/BitSet;

    iput p3, p0, Lb/b/f/b/v;->c:I

    new-instance p2, Lb/b/f/b/u;

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result p1

    invoke-direct {p2, p1}, Lb/b/f/b/u;-><init>(I)V

    iput-object p2, p0, Lb/b/f/b/v;->d:Lb/b/f/b/u;

    iput-boolean p4, p0, Lb/b/f/b/v;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lb/b/f/b/u;Ljava/util/BitSet;IZB)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/f/b/v;-><init>(Lb/b/f/b/u;Ljava/util/BitSet;IZ)V

    return-void
.end method

.method static synthetic a(Lb/b/f/b/v;)Lb/b/f/b/u;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/v;->b:Lb/b/f/b/u;

    invoke-virtual {v0}, Lb/b/f/b/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/f/b/v;->d:Lb/b/f/b/u;

    invoke-virtual {v0}, Lb/b/f/b/u;->b_()V

    :cond_0
    iget-object p0, p0, Lb/b/f/b/v;->d:Lb/b/f/b/u;

    return-object p0
.end method

.method static synthetic a(Lb/b/f/b/v;I)V
    .registers 6

    iget-object v0, p0, Lb/b/f/b/v;->b:Lb/b/f/b/u;

    invoke-static {v0, p1}, Lb/b/f/b/u;->a(Lb/b/f/b/u;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/b/r;

    iget-object v1, p0, Lb/b/f/b/v;->a:Ljava/util/BitSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/b/f/b/v;->a:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget v1, p0, Lb/b/f/b/v;->c:I

    invoke-virtual {v0, v1}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lb/b/f/b/v;->e:Z

    if-nez v1, :cond_2

    iget v1, p0, Lb/b/f/b/v;->c:I

    invoke-virtual {v0}, Lb/b/f/b/r;->k()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lb/b/f/b/v;->c:I

    :cond_2
    iput-boolean v2, p0, Lb/b/f/b/v;->e:Z

    iget-object p0, p0, Lb/b/f/b/v;->d:Lb/b/f/b/u;

    invoke-static {p0, p1, v0}, Lb/b/f/b/u;->a(Lb/b/f/b/u;ILjava/lang/Object;)V

    return-void
.end method
