.class public Lorg/a/a/t;
.super Lorg/a/a/w;


# instance fields
.field public start:Lorg/a/a/x;

.field public stop:Lorg/a/a/x;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public getStart()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/a/a/t;->start:Lorg/a/a/x;

    return-object v0
.end method

.method public getStop()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/a/a/t;->stop:Lorg/a/a/x;

    return-object v0
.end method

.method public getTree()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
