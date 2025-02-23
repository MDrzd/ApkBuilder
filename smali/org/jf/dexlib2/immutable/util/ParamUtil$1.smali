.class final Lorg/jf/dexlib2/immutable/util/ParamUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;-><init>(Lorg/jf/dexlib2/immutable/util/ParamUtil$1;)V

    return-object v0
.end method
