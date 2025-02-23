.class public Ljackpal/androidterm/Exec;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "jackpal-androidterm5"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static native setPtyUTF8ModeInternal(IZ)V
.end method

.method static native setPtyWindowSizeInternal(IIIII)V
.end method
