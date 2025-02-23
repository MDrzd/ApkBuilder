.class public final Lb/a/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/d;->a:I

    iput p2, p0, Lb/a/d;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/a/d;->a:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/a/d;->b:I

    return v0
.end method
