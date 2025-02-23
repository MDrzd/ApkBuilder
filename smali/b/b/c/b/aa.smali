.class public final Lb/b/c/b/aa;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lb/b/f/b/z;


# direct methods
.method public constructor <init>(ILb/b/f/b/z;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lb/b/c/b/aa;->a:I

    iput-object p2, p0, Lb/b/c/b/aa;->b:Lb/b/f/b/z;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/c/b/aa;->a:I

    return v0
.end method

.method public final b()Lb/b/f/b/z;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/aa;->b:Lb/b/f/b/z;

    return-object v0
.end method
