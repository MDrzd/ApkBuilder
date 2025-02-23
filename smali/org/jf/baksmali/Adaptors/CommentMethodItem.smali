.class public Lorg/jf/baksmali/Adaptors/CommentMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# instance fields
.field private final comment:Ljava/lang/String;

.field private final sortOrder:D


# direct methods
.method public constructor <init>(Ljava/lang/String;ID)V
    .registers 5

    invoke-direct {p0, p2}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/CommentMethodItem;->comment:Ljava/lang/String;

    iput-wide p3, p0, Lorg/jf/baksmali/Adaptors/CommentMethodItem;->sortOrder:D

    return-void
.end method


# virtual methods
.method public getSortOrder()D
    .registers 3

    iget-wide v0, p0, Lorg/jf/baksmali/Adaptors/CommentMethodItem;->sortOrder:D

    return-wide v0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 3

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CommentMethodItem;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
