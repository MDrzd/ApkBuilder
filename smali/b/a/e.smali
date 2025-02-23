.class public final Lb/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/e;->a:I

    iput p2, p0, Lb/a/e;->b:I

    iput p3, p0, Lb/a/e;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/a/e;->a:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/a/e;->b:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/a/e;->c:I

    return v0
.end method
