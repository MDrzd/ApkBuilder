.class public Lorg/jf/baksmali/Adaptors/BlankMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getSortOrder()D
    .registers 3

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    return-wide v0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
