.class final Lb/b/a/b/ad;
.super Ljava/lang/Object;


# instance fields
.field private a:Lb/b/f/d/c;

.field private b:I


# direct methods
.method constructor <init>(Lb/b/f/d/c;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/b/ad;->a:Lb/b/f/d/c;

    iput p2, p0, Lb/b/a/b/ad;->b:I

    return-void
.end method


# virtual methods
.method final a()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/ad;->a:Lb/b/f/d/c;

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/b/a/b/ad;->b:I

    return v0
.end method
