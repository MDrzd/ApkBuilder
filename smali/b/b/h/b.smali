.class final Lb/b/h/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/j;


# instance fields
.field private a:I

.field private synthetic b:Lb/b/h/a;


# direct methods
.method constructor <init>(Lb/b/h/a;)V
    .registers 3

    iput-object p1, p0, Lb/b/h/b;->b:Lb/b/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lb/b/h/b;->b:Lb/b/h/a;

    iget-object p1, p1, Lb/b/h/a;->a:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/a/a;->d([II)I

    move-result p1

    iput p1, p0, Lb/b/h/b;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget v0, p0, Lb/b/h/b;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .registers 4

    invoke-virtual {p0}, Lb/b/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/h/b;->a:I

    iget-object v1, p0, Lb/b/h/b;->b:Lb/b/h/a;

    iget-object v1, v1, Lb/b/h/a;->a:[I

    iget v2, p0, Lb/b/h/b;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, La/a/a;->d([II)I

    move-result v1

    iput v1, p0, Lb/b/h/b;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
