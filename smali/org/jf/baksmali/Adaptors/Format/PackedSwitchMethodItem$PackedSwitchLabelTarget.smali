.class Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchLabelTarget;
.super Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchTarget;


# instance fields
.field private final target:Lorg/jf/baksmali/Adaptors/LabelMethodItem;


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/Adaptors/LabelMethodItem;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchTarget;-><init>(Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$1;)V

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchLabelTarget;->target:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    return-void
.end method


# virtual methods
.method public writeTargetTo(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchLabelTarget;->target:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {v0, p1}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->writeTo(Lorg/jf/util/IndentingWriter;)Z

    return-void
.end method
