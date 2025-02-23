.class public final Lb/b/a/b/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/a/b/c;

.field private final b:Lb/b/f/c/y;

.field private final c:Lb/b/f/c/ae;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;Lb/b/f/c/y;Lb/b/a/b/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Lb/b/a/b/e;->b:Lb/b/f/c/y;

    iput-object p3, p0, Lb/b/a/b/e;->a:Lb/b/a/b/c;

    iput-object p1, p0, Lb/b/a/b/e;->c:Lb/b/f/c/ae;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bootstrapMethodArguments == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bootstrapMethodHandle == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "declaringClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/f/c/y;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/e;->b:Lb/b/f/c/y;

    return-object v0
.end method

.method public final b()Lb/b/a/b/c;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/e;->a:Lb/b/a/b/c;

    return-object v0
.end method
