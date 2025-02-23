.class public final Lb/b/d/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lb/b/d/a/i;

.field private final d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lb/b/d/a/i;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/b/d/f;->a:I

    iput-object p2, p0, Lb/b/d/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/b/d/f;->c:Lb/b/d/a/i;

    iput p4, p0, Lb/b/d/f;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/d/f;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/d/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lb/b/d/a/i;
    .registers 2

    iget-object v0, p0, Lb/b/d/f;->c:Lb/b/d/a/i;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lb/b/d/f;->d:I

    return v0
.end method
