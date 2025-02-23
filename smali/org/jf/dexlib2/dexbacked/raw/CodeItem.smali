.class public Lorg/jf/dexlib2/dexbacked/raw/CodeItem;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG_INFO_OFFSET:I = 0x8

.field public static final INSTRUCTION_COUNT_OFFSET:I = 0xc

.field public static final INSTRUCTION_START_OFFSET:I = 0x10

.field public static final INS_OFFSET:I = 0x2

.field public static final OUTS_OFFSET:I = 0x4

.field public static final REGISTERS_OFFSET:I = 0x0

.field public static final TRIES_SIZE_OFFSET:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/dexbacked/raw/MapItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem$1;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    return-object v0
.end method
