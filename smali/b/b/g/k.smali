.class final Lb/b/g/k;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ah;


# instance fields
.field private a:I

.field private synthetic b:Lb/b/g/i;


# direct methods
.method private constructor <init>(Lb/b/g/i;)V
    .registers 2

    iput-object p1, p0, Lb/b/g/k;->b:Lb/b/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lb/b/g/k;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lb/b/g/i;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/g/k;-><init>(Lb/b/g/i;)V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/g/af;Lb/b/g/af;)V
    .registers 5

    new-instance v0, Lb/b/g/j;

    invoke-direct {v0}, Lb/b/g/j;-><init>()V

    iget v1, p0, Lb/b/g/k;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/b/g/k;->a:I

    iput v1, v0, Lb/b/g/j;->a:I

    iput-object p1, v0, Lb/b/g/j;->c:Lb/b/g/af;

    iput-object p2, v0, Lb/b/g/j;->b:Lb/b/g/af;

    iget-object p2, p0, Lb/b/g/k;->b:Lb/b/g/i;

    invoke-static {p2}, Lb/b/g/i;->a(Lb/b/g/i;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lb/b/g/k;->b:Lb/b/g/i;

    invoke-static {p2}, Lb/b/g/i;->b(Lb/b/g/i;)[Lb/b/g/j;

    move-result-object p2

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result p1

    aput-object v0, p2, p1

    return-void
.end method
