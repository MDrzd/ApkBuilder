.class public Lorg/jf/dexlib2/builder/SwitchLabelElement;
.super Ljava/lang/Object;


# instance fields
.field public final key:I

.field public final target:Lorg/jf/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/jf/dexlib2/builder/Label;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/builder/SwitchLabelElement;->key:I

    iput-object p2, p0, Lorg/jf/dexlib2/builder/SwitchLabelElement;->target:Lorg/jf/dexlib2/builder/Label;

    return-void
.end method
