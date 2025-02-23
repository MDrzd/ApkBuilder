.class public Lorg/jf/smali/smaliParser$reference_type_descriptor_return;
.super Lorg/a/a/t;


# instance fields
.field tree:Lorg/a/a/b/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getTree()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/smali/smaliParser$reference_type_descriptor_return;->getTree()Lorg/a/a/b/d;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lorg/a/a/b/d;
    .registers 2

    iget-object v0, p0, Lorg/jf/smali/smaliParser$reference_type_descriptor_return;->tree:Lorg/a/a/b/d;

    return-object v0
.end method
