.class public Lorg/a/a/b/r;
.super Lorg/a/a/w;


# instance fields
.field public start:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public getStart()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/r;->start:Ljava/lang/Object;

    return-object v0
.end method
