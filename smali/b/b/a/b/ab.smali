.class final Lb/b/a/b/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/f/b/b;


# instance fields
.field private synthetic a:Lb/b/h/k;

.field private synthetic b:Lb/b/a/b/z;


# direct methods
.method constructor <init>(Lb/b/a/b/z;Lb/b/h/k;)V
    .registers 3

    iput-object p1, p0, Lb/b/a/b/ab;->b:Lb/b/a/b/z;

    iput-object p2, p0, Lb/b/a/b/ab;->a:Lb/b/h/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/b/a;)V
    .registers 3

    iget-object v0, p0, Lb/b/a/b/ab;->a:Lb/b/h/k;

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lb/b/h/k;->c(I)V

    return-void
.end method
