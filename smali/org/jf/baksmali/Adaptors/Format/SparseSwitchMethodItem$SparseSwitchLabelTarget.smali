.class Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchLabelTarget;
.super Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;


# instance fields
.field private final target:Lorg/jf/baksmali/Adaptors/LabelMethodItem;


# direct methods
.method public constructor <init>(ILorg/jf/baksmali/Adaptors/LabelMethodItem;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;-><init>(I)V

    iput-object p2, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchLabelTarget;->target:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    return-void
.end method


# virtual methods
.method public writeTargetTo(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchLabelTarget;->target:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {v0, p1}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->writeTo(Lorg/jf/util/IndentingWriter;)Z

    return-void
.end method
