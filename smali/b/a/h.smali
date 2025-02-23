.class public final Lb/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/h;->a:I

    iput p2, p0, Lb/a/h;->b:I

    iput p3, p0, Lb/a/h;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/a/h;->a:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/a/h;->b:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/a/h;->c:I

    return v0
.end method
