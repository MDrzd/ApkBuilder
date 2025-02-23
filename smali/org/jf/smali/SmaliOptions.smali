.class public Lorg/jf/smali/SmaliOptions;
.super Ljava/lang/Object;


# instance fields
.field public allowOdexOpcodes:Z

.field public apiLevel:I

.field public jobs:I

.field public outputDexFile:Ljava/lang/String;

.field public printTokens:Z

.field public verboseErrors:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lorg/jf/smali/SmaliOptions;->apiLevel:I

    const-string v0, "out.dex"

    iput-object v0, p0, Lorg/jf/smali/SmaliOptions;->outputDexFile:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lorg/jf/smali/SmaliOptions;->jobs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jf/smali/SmaliOptions;->allowOdexOpcodes:Z

    iput-boolean v0, p0, Lorg/jf/smali/SmaliOptions;->verboseErrors:Z

    iput-boolean v0, p0, Lorg/jf/smali/SmaliOptions;->printTokens:Z

    return-void
.end method
