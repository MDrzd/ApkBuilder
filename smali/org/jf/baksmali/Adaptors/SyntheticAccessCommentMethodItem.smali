.class public Lorg/jf/baksmali/Adaptors/SyntheticAccessCommentMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# instance fields
.field private final accessedMember:Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;I)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/SyntheticAccessCommentMethodItem;->accessedMember:Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    return-void
.end method


# virtual methods
.method public getSortOrder()D
    .registers 3

    const-wide v0, 0x4058f33333333333L    # 99.8

    return-wide v0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 5

    const-string v0, "# "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/SyntheticAccessCommentMethodItem;->accessedMember:Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    iget v0, v0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;->accessedMemberType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/SyntheticAccessCommentMethodItem;->accessedMember:Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    iget v2, v2, Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;->accessedMemberType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unknown access type: %d"

    invoke-direct {p1, v1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    const-string v0, ">>>= operator for: "

    goto :goto_0

    :pswitch_1
    const-string v0, ">>= operator for: "

    goto :goto_0

    :pswitch_2
    const-string v0, "<<= operator for: "

    goto :goto_0

    :pswitch_3
    const-string v0, "^= operator for: "

    goto :goto_0

    :pswitch_4
    const-string v0, "|= operator for: "

    goto :goto_0

    :pswitch_5
    const-string v0, "&= operator for: "

    goto :goto_0

    :pswitch_6
    const-string v0, "%= operator for: "

    goto :goto_0

    :pswitch_7
    const-string v0, "/= operator for: "

    goto :goto_0

    :pswitch_8
    const-string v0, "*= operator for: "

    goto :goto_0

    :pswitch_9
    const-string v0, "-= operator for: "

    goto :goto_0

    :pswitch_a
    const-string v0, "+= operator for: "

    goto :goto_0

    :pswitch_b
    const-string v0, "--operator for: "

    goto :goto_0

    :pswitch_c
    const-string v0, "operator-- for: "

    goto :goto_0

    :pswitch_d
    const-string v0, "++operator for: "

    goto :goto_0

    :pswitch_e
    const-string v0, "operator++ for: "

    goto :goto_0

    :pswitch_f
    const-string v0, "setter for: "

    goto :goto_0

    :pswitch_10
    const-string v0, "getter for: "

    goto :goto_0

    :pswitch_11
    const-string v0, "invokes: "

    :goto_0
    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/SyntheticAccessCommentMethodItem;->accessedMember:Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    iget v0, v0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;->accessedMemberType:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    :goto_1
    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/SyntheticAccessCommentMethodItem;->accessedMember:Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    iget-object v2, v2, Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;->accessedMember:Lorg/jf/dexlib2/iface/reference/Reference;

    invoke-static {p1, v0, v2}, Lorg/jf/baksmali/Adaptors/ReferenceFormatter;->writeReference(Lorg/jf/util/IndentingWriter;ILorg/jf/dexlib2/iface/reference/Reference;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
