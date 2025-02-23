.class public Lorg/jf/baksmali/Adaptors/CommentedOutMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# instance fields
.field private final commentedOutMethodItem:Lorg/jf/baksmali/Adaptors/MethodItem;


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/Adaptors/MethodItem;)V
    .registers 3

    invoke-virtual {p1}, Lorg/jf/baksmali/Adaptors/MethodItem;->getCodeAddress()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/CommentedOutMethodItem;->commentedOutMethodItem:Lorg/jf/baksmali/Adaptors/MethodItem;

    return-void
.end method


# virtual methods
.method public getSortOrder()D
    .registers 5

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CommentedOutMethodItem;->commentedOutMethodItem:Lorg/jf/baksmali/Adaptors/MethodItem;

    invoke-virtual {v0}, Lorg/jf/baksmali/Adaptors/MethodItem;->getSortOrder()D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 3

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CommentedOutMethodItem;->commentedOutMethodItem:Lorg/jf/baksmali/Adaptors/MethodItem;

    invoke-virtual {v0, p1}, Lorg/jf/baksmali/Adaptors/MethodItem;->writeTo(Lorg/jf/util/IndentingWriter;)Z

    const/4 p1, 0x1

    return p1
.end method
