.class abstract Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;
.super Ljava/lang/Object;


# instance fields
.field private final key:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;->key:I

    return-void
.end method


# virtual methods
.method public getKey()I
    .registers 2

    iget v0, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;->key:I

    return v0
.end method

.method public abstract writeTargetTo(Lorg/jf/util/IndentingWriter;)V
.end method
