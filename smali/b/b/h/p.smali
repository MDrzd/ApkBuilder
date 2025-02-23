.class final Lb/b/h/p;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/j;


# instance fields
.field private a:I

.field private synthetic b:Lb/b/h/o;


# direct methods
.method constructor <init>(Lb/b/h/o;)V
    .registers 2

    iput-object p1, p0, Lb/b/h/p;->b:Lb/b/h/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lb/b/h/p;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    iget v0, p0, Lb/b/h/p;->a:I

    iget-object v1, p0, Lb/b/h/p;->b:Lb/b/h/o;

    iget-object v1, v1, Lb/b/h/o;->a:Lb/b/h/k;

    invoke-virtual {v1}, Lb/b/h/k;->f()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .registers 4

    invoke-virtual {p0}, Lb/b/h/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/h/p;->b:Lb/b/h/o;

    iget-object v0, v0, Lb/b/h/o;->a:Lb/b/h/k;

    iget v1, p0, Lb/b/h/p;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/b/h/p;->a:I

    invoke-virtual {v0, v1}, Lb/b/h/k;->b(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
