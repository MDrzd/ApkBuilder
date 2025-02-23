.class public final Lb/b/a/a/a;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/f/c/a;

.field private final b:I


# direct methods
.method public constructor <init>(Lb/b/f/c/a;I)V
    .registers 4

    const-string v0, "AnnotationDefault"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/a/a;->a:Lb/b/f/c/a;

    iput p2, p0, Lb/b/a/a/a;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/a/a/a;->b:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final b()Lb/b/f/c/a;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/a;->a:Lb/b/f/c/a;

    return-object v0
.end method
