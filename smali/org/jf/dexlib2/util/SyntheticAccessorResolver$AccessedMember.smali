.class public Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;
.super Ljava/lang/Object;


# instance fields
.field public final accessedMember:Lorg/jf/dexlib2/iface/reference/Reference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final accessedMemberType:I


# direct methods
.method public constructor <init>(ILorg/jf/dexlib2/iface/reference/Reference;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;->accessedMemberType:I

    iput-object p2, p0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;->accessedMember:Lorg/jf/dexlib2/iface/reference/Reference;

    return-void
.end method
