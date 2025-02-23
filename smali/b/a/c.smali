.class public Lb/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lb/a/d;

.field private final b:[Lb/a/d;

.field private final c:[Lb/a/e;

.field private final d:[Lb/a/e;


# direct methods
.method public constructor <init>([Lb/a/d;[Lb/a/d;[Lb/a/e;[Lb/a/e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/c;->a:[Lb/a/d;

    iput-object p2, p0, Lb/a/c;->b:[Lb/a/d;

    iput-object p3, p0, Lb/a/c;->c:[Lb/a/e;

    iput-object p4, p0, Lb/a/c;->d:[Lb/a/e;

    return-void
.end method


# virtual methods
.method public final a()[Lb/a/d;
    .registers 2

    iget-object v0, p0, Lb/a/c;->a:[Lb/a/d;

    return-object v0
.end method

.method public final b()[Lb/a/d;
    .registers 2

    iget-object v0, p0, Lb/a/c;->b:[Lb/a/d;

    return-object v0
.end method

.method public final c()[Lb/a/e;
    .registers 2

    iget-object v0, p0, Lb/a/c;->c:[Lb/a/e;

    return-object v0
.end method

.method public final d()[Lb/a/e;
    .registers 2

    iget-object v0, p0, Lb/a/c;->d:[Lb/a/e;

    return-object v0
.end method

.method public final e()[Lb/a/d;
    .registers 6

    iget-object v0, p0, Lb/a/c;->a:[Lb/a/d;

    array-length v0, v0

    iget-object v1, p0, Lb/a/c;->b:[Lb/a/d;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Lb/a/d;

    iget-object v1, p0, Lb/a/c;->a:[Lb/a/d;

    iget-object v2, p0, Lb/a/c;->a:[Lb/a/d;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lb/a/c;->b:[Lb/a/d;

    iget-object v2, p0, Lb/a/c;->a:[Lb/a/d;

    array-length v2, v2

    iget-object v4, p0, Lb/a/c;->b:[Lb/a/d;

    array-length v4, v4

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final f()[Lb/a/e;
    .registers 6

    iget-object v0, p0, Lb/a/c;->c:[Lb/a/e;

    array-length v0, v0

    iget-object v1, p0, Lb/a/c;->d:[Lb/a/e;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Lb/a/e;

    iget-object v1, p0, Lb/a/c;->c:[Lb/a/e;

    iget-object v2, p0, Lb/a/c;->c:[Lb/a/e;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lb/a/c;->d:[Lb/a/e;

    iget-object v2, p0, Lb/a/c;->c:[Lb/a/e;

    array-length v2, v2

    iget-object v4, p0, Lb/a/c;->d:[Lb/a/e;

    array-length v4, v4

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
