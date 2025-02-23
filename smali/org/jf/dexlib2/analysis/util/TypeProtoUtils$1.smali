.class final Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic val$typeProto:Lorg/jf/dexlib2/analysis/TypeProto;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/TypeProto;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1;->val$typeProto:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;-><init>(Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1;)V

    return-object v0
.end method
