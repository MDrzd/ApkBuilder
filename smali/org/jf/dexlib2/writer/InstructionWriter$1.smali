.class Lorg/jf/dexlib2/writer/InstructionWriter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/InstructionWriter;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/InstructionWriter;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/InstructionWriter$1;->this$0:Lorg/jf/dexlib2/writer/InstructionWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/InstructionWriter$1;->compare(Lorg/jf/dexlib2/iface/instruction/SwitchElement;Lorg/jf/dexlib2/iface/instruction/SwitchElement;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/jf/dexlib2/iface/instruction/SwitchElement;Lorg/jf/dexlib2/iface/instruction/SwitchElement;)I
    .registers 3

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result p1

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method
