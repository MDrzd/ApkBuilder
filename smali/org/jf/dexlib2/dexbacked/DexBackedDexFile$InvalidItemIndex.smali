.class public Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;
.super Lorg/jf/util/ExceptionWithContext;


# instance fields
.field private final itemIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;->itemIndex:I

    return-void
.end method

.method public varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;->itemIndex:I

    return-void
.end method


# virtual methods
.method public getInvalidIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex;->itemIndex:I

    return v0
.end method
