.class final Lcom/google/common/io/GwtWorkarounds;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asCharInput(Ljava/io/Reader;)Lcom/google/common/io/GwtWorkarounds$CharInput;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Reader"
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/io/GwtWorkarounds$1;

    invoke-direct {v0, p0}, Lcom/google/common/io/GwtWorkarounds$1;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method static asCharInput(Ljava/lang/CharSequence;)Lcom/google/common/io/GwtWorkarounds$CharInput;
    .registers 2

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/io/GwtWorkarounds$2;

    invoke-direct {v0, p0}, Lcom/google/common/io/GwtWorkarounds$2;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static asCharOutput(Ljava/io/Writer;)Lcom/google/common/io/GwtWorkarounds$CharOutput;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Writer"
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/io/GwtWorkarounds$5;

    invoke-direct {v0, p0}, Lcom/google/common/io/GwtWorkarounds$5;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method static asInputStream(Lcom/google/common/io/GwtWorkarounds$ByteInput;)Ljava/io/InputStream;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "InputStream"
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/io/GwtWorkarounds$3;

    invoke-direct {v0, p0}, Lcom/google/common/io/GwtWorkarounds$3;-><init>(Lcom/google/common/io/GwtWorkarounds$ByteInput;)V

    return-object v0
.end method

.method static asOutputStream(Lcom/google/common/io/GwtWorkarounds$ByteOutput;)Ljava/io/OutputStream;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "OutputStream"
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/io/GwtWorkarounds$4;

    invoke-direct {v0, p0}, Lcom/google/common/io/GwtWorkarounds$4;-><init>(Lcom/google/common/io/GwtWorkarounds$ByteOutput;)V

    return-object v0
.end method

.method static stringBuilderOutput(I)Lcom/google/common/io/GwtWorkarounds$CharOutput;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance p0, Lcom/google/common/io/GwtWorkarounds$6;

    invoke-direct {p0, v0}, Lcom/google/common/io/GwtWorkarounds$6;-><init>(Ljava/lang/StringBuilder;)V

    return-object p0
.end method
