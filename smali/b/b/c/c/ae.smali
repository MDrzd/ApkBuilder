.class public final Lb/b/c/c/ae;
.super Lb/b/c/c/bi;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lb/b/c/c/u;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lb/b/c/c/bi;-><init>(Ljava/lang/String;Lb/b/c/c/u;I)V

    new-instance p1, Lb/b/c/c/ad;

    invoke-direct {p1}, Lb/b/c/c/ad;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/b/c/c/ad;->a(I)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb/b/c/c/ae;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 1

    return-void
.end method

.method public final b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/ae;->a:Ljava/util/List;

    return-object v0
.end method
