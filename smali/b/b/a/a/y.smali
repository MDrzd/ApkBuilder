.class public final Lb/b/a/a/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/f/c/ae;

.field private final b:Lb/b/f/c/ae;

.field private final c:Lb/b/f/c/ad;

.field private final d:I


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;Lb/b/f/c/ae;Lb/b/f/c/ad;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/a/y;->a:Lb/b/f/c/ae;

    iput-object p2, p0, Lb/b/a/a/y;->b:Lb/b/f/c/ae;

    iput-object p3, p0, Lb/b/a/a/y;->c:Lb/b/f/c/ad;

    iput p4, p0, Lb/b/a/a/y;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "innerClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/y;->a:Lb/b/f/c/ae;

    return-object v0
.end method

.method public final b()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/y;->b:Lb/b/f/c/ae;

    return-object v0
.end method

.method public final c()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/y;->c:Lb/b/f/c/ad;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lb/b/a/a/y;->d:I

    return v0
.end method
