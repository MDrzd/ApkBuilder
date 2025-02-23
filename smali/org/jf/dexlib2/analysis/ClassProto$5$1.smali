.class Lorg/jf/dexlib2/analysis/ClassProto$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/analysis/ClassProto$5;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/ClassProto$5;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassProto$5$1;->this$1:Lorg/jf/dexlib2/analysis/ClassProto$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lorg/jf/dexlib2/iface/Field;

    check-cast p2, Lorg/jf/dexlib2/iface/Field;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/analysis/ClassProto$5$1;->compare(Lorg/jf/dexlib2/iface/Field;Lorg/jf/dexlib2/iface/Field;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/jf/dexlib2/iface/Field;Lorg/jf/dexlib2/iface/Field;)I
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto$5$1;->this$1:Lorg/jf/dexlib2/analysis/ClassProto$5;

    invoke-static {v0, p1}, Lorg/jf/dexlib2/analysis/ClassProto$5;->access$300(Lorg/jf/dexlib2/analysis/ClassProto$5;Lorg/jf/dexlib2/iface/reference/FieldReference;)I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto$5$1;->this$1:Lorg/jf/dexlib2/analysis/ClassProto$5;

    invoke-static {v1, p2}, Lorg/jf/dexlib2/analysis/ClassProto$5;->access$300(Lorg/jf/dexlib2/analysis/ClassProto$5;Lorg/jf/dexlib2/iface/reference/FieldReference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Field;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Field;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
