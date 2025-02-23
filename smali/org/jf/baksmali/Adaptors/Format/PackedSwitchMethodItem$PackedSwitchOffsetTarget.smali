.class Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchOffsetTarget;
.super Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchTarget;


# instance fields
.field private final target:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchTarget;-><init>(Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$1;)V

    iput p1, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchOffsetTarget;->target:I

    return-void
.end method


# virtual methods
.method public writeTargetTo(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget v0, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchOffsetTarget;->target:I

    if-ltz v0, :cond_0

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_0
    iget v0, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchOffsetTarget;->target:I

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    return-void
.end method
