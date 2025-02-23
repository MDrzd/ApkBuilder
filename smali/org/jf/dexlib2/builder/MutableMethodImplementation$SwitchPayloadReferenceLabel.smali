.class Lorg/jf/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;
.super Lorg/jf/dexlib2/builder/Label;


# instance fields
.field public switchLocation:Lorg/jf/dexlib2/builder/MethodLocation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/Label;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jf/dexlib2/builder/MutableMethodImplementation$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation$SwitchPayloadReferenceLabel;-><init>()V

    return-void
.end method
