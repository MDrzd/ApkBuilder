.class public Lorg/jf/baksmali/Adaptors/Debug/BeginEpilogueMethodItem;
.super Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;-><init>(II)V

    return-void
.end method


# virtual methods
.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 3

    const-string v0, ".prologue"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
