.class final Lb/b/e/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:Lb/b/e/o;

.field final b:Ljava/lang/Comparable;

.field final c:I

.field final d:I

.field private e:Lb/a/i;

.field private synthetic f:Lb/b/e/l;


# direct methods
.method constructor <init>(Lb/b/e/l;Lb/a/i;Lb/b/e/o;Ljava/lang/Comparable;II)V
    .registers 7

    iput-object p1, p0, Lb/b/e/m;->f:Lb/b/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/e/m;->e:Lb/a/i;

    iput-object p3, p0, Lb/b/e/m;->a:Lb/b/e/o;

    iput-object p4, p0, Lb/b/e/m;->b:Ljava/lang/Comparable;

    iput p5, p0, Lb/b/e/m;->c:I

    iput p6, p0, Lb/b/e/m;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lb/b/e/m;)I
    .registers 3

    iget-object v0, p0, Lb/b/e/m;->b:Ljava/lang/Comparable;

    iget-object p1, p1, Lb/b/e/m;->b:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/e/m;

    invoke-virtual {p0, p1}, Lb/b/e/m;->a(Lb/b/e/m;)I

    move-result p1

    return p1
.end method
