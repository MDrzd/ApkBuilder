.class final Lcom/google/common/escape/Platform;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final DEST_TL:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/escape/Platform$1;

    invoke-direct {v0}, Lcom/google/common/escape/Platform$1;-><init>()V

    sput-object v0, Lcom/google/common/escape/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charBufferFromThreadLocal()[C
    .registers 1

    sget-object v0, Lcom/google/common/escape/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method
