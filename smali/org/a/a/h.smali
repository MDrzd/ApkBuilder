.class public final Lorg/a/a/h;
.super Lorg/a/a/u;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/u;-><init>()V

    return-void
.end method

.method public constructor <init>(ILorg/a/a/j;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/a/a/u;-><init>(Lorg/a/a/j;)V

    iput p1, p0, Lorg/a/a/h;->a:I

    return-void
.end method
