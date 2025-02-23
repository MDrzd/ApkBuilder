.class final Lb/a/q;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field private synthetic a:Lb/a/i;


# direct methods
.method private constructor <init>(Lb/a/i;)V
    .registers 2

    iput-object p1, p0, Lb/a/q;->a:Lb/a/i;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/i;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/a/q;-><init>(Lb/a/i;)V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lb/a/q;->a:Lb/a/i;

    invoke-virtual {v0, p1}, Lb/a/i;->c(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lb/a/q;->a:Lb/a/i;

    invoke-static {v0}, Lb/a/i;->a(Lb/a/i;)Lb/a/ac;

    move-result-object v0

    iget-object v0, v0, Lb/a/ac;->c:Lb/a/ad;

    iget v0, v0, Lb/a/ad;->b:I

    return v0
.end method
