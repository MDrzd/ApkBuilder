.class public final Lb/a/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:[S

.field private final f:[Lb/a/h;

.field private final g:[Lb/a/g;


# direct methods
.method public constructor <init>(IIII[S[Lb/a/h;[Lb/a/g;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/f;->a:I

    iput p2, p0, Lb/a/f;->b:I

    iput p3, p0, Lb/a/f;->c:I

    iput p4, p0, Lb/a/f;->d:I

    iput-object p5, p0, Lb/a/f;->e:[S

    iput-object p6, p0, Lb/a/f;->f:[Lb/a/h;

    iput-object p7, p0, Lb/a/f;->g:[Lb/a/g;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/a/f;->a:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/a/f;->b:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/a/f;->c:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lb/a/f;->d:I

    return v0
.end method

.method public final e()[S
    .registers 2

    iget-object v0, p0, Lb/a/f;->e:[S

    return-object v0
.end method

.method public final f()[Lb/a/h;
    .registers 2

    iget-object v0, p0, Lb/a/f;->f:[Lb/a/h;

    return-object v0
.end method

.method public final g()[Lb/a/g;
    .registers 2

    iget-object v0, p0, Lb/a/f;->g:[Lb/a/g;

    return-object v0
.end method
