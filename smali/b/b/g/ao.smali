.class final Lb/b/g/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ah;


# instance fields
.field private synthetic a:Lb/b/g/an;


# direct methods
.method constructor <init>(Lb/b/g/an;)V
    .registers 2

    iput-object p1, p0, Lb/b/g/ao;->a:Lb/b/g/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/g/af;Lb/b/g/af;)V
    .registers 4

    new-instance p2, Lb/b/g/ap;

    iget-object v0, p0, Lb/b/g/ao;->a:Lb/b/g/an;

    invoke-direct {p2, v0, p1}, Lb/b/g/ap;-><init>(Lb/b/g/an;Lb/b/g/af;)V

    invoke-virtual {p2}, Lb/b/g/ap;->a()V

    return-void
.end method
