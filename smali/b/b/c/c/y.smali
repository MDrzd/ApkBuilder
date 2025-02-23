.class public abstract Lb/b/c/c/y;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/s;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/b/c/c/y;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Lb/b/c/c/u;Lb/b/h/r;II)I
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/b/c/c/y;->a:I

    return v0
.end method
