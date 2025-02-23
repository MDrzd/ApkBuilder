.class final Lb/b/a/b/ae;
.super Lb/b/a/b/af;


# instance fields
.field private b:I

.field private synthetic c:Lb/b/a/b/z;


# direct methods
.method constructor <init>(Lb/b/a/b/z;)V
    .registers 3

    iput-object p1, p0, Lb/b/a/b/ae;->c:Lb/b/a/b/z;

    invoke-static {p1}, Lb/b/a/b/z;->b(Lb/b/a/b/z;)I

    move-result v0

    invoke-direct {p0, v0}, Lb/b/a/b/af;-><init>(I)V

    invoke-static {p1}, Lb/b/a/b/z;->b(Lb/b/a/b/z;)I

    move-result v0

    invoke-static {p1}, Lb/b/a/b/z;->c(Lb/b/a/b/z;)Lb/b/a/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/n;->m()Lb/b/a/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/g;->a_()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lb/b/a/b/ae;->b:I

    return-void
.end method


# virtual methods
.method final a()I
    .registers 3

    iget v0, p0, Lb/b/a/b/ae;->a:I

    iget v1, p0, Lb/b/a/b/ae;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lb/b/a/b/ae;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/b/a/b/ae;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
