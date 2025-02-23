.class public Lorg/jf/dexlib2/writer/builder/BaseBuilderPool;
.super Ljava/lang/Object;


# instance fields
.field protected final dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/DexBuilder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BaseBuilderPool;->dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    return-void
.end method
