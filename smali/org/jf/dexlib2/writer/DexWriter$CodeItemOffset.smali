.class Lorg/jf/dexlib2/writer/DexWriter$CodeItemOffset;
.super Ljava/lang/Object;


# instance fields
.field codeOffset:I

.field method:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/jf/dexlib2/writer/DexWriter$CodeItemOffset;->codeOffset:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/DexWriter$CodeItemOffset;->method:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILorg/jf/dexlib2/writer/DexWriter$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$CodeItemOffset;-><init>(Ljava/lang/Object;I)V

    return-void
.end method
