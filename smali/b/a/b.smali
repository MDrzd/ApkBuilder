.class public final Lb/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/a/i;

.field private final b:I


# direct methods
.method public constructor <init>(Lb/a/i;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b;->a:Lb/a/i;

    iput p2, p0, Lb/a/b;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/a/b;->b:I

    return v0
.end method

.method public final a(Lb/a/o;)V
    .registers 3

    iget v0, p0, Lb/a/b;->b:I

    invoke-virtual {p1, v0}, Lb/a/o;->f(I)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lb/a/b;

    iget v0, p0, Lb/a/b;->b:I

    iget p1, p1, Lb/a/b;->b:I

    invoke-static {v0, p1}, La/a/a;->a(II)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lb/a/b;->a:Lb/a/i;

    if-nez v0, :cond_0

    iget v0, p0, Lb/a/b;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a/b;->a:Lb/a/i;

    invoke-virtual {v0}, Lb/a/i;->h()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lb/a/b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ab;

    invoke-virtual {v0}, Lb/a/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
