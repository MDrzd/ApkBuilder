.class final Lb/b/a/b/l;
.super Lb/b/a/b/k;


# instance fields
.field a:Lb/b/f/c/a;

.field b:I

.field c:I

.field private synthetic d:Lb/b/a/b/j;


# direct methods
.method constructor <init>(Lb/b/a/b/j;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/b/l;->d:Lb/b/a/b/j;

    invoke-direct {p0}, Lb/b/a/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final a(III)V
    .registers 4

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/b/l;->b:I

    return-void
.end method

.method public final a(IIII)V
    .registers 5

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/b/l;->b:I

    return-void
.end method

.method public final a(IIIILb/b/f/d/c;I)V
    .registers 7

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/b/l;->b:I

    return-void
.end method

.method public final a(IIILb/b/a/b/am;I)V
    .registers 6

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/b/l;->b:I

    return-void
.end method

.method public final a(IIILb/b/f/c/a;I)V
    .registers 6

    iput-object p4, p0, Lb/b/a/b/l;->a:Lb/b/f/c/a;

    iput p3, p0, Lb/b/a/b/l;->b:I

    iput p5, p0, Lb/b/a/b/l;->c:I

    return-void
.end method

.method public final a(IIILb/b/f/d/c;)V
    .registers 5

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/b/l;->b:I

    return-void
.end method

.method public final a(IILb/b/f/c/ae;Ljava/util/ArrayList;)V
    .registers 5

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/b/l;->b:I

    return-void
.end method
