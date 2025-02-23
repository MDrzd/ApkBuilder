.class Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchOffsetTarget;
.super Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;


# instance fields
.field private final target:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;-><init>(I)V

    iput p2, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchOffsetTarget;->target:I

    return-void
.end method


# virtual methods
.method public writeTargetTo(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget v0, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchOffsetTarget;->target:I

    if-ltz v0, :cond_0

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_0
    iget v0, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchOffsetTarget;->target:I

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    return-void
.end method
