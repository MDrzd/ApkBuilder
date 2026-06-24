# classes.dex

.class public Lcom/gmail/heagoo/builder/FnmodsDatosString;
.super Ljava/lang/Object;
.source "FnmodsDatosString.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _datosfn(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_64

    .line 39
    :cond_7
    :goto_7
    return-object p0

    .line 9
    :sswitch_8
    const-string v0, "minskd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-static {}, Lcom/gmail/heagoo/builder/f;->MinSkd()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 9
    :sswitch_15
    const-string v0, "target"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    invoke-static {}, Lcom/gmail/heagoo/builder/f;->target()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 9
    :sswitch_22
    const-string v0, "code"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    invoke-static {}, Lcom/gmail/heagoo/builder/f;->VersionCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 9
    :sswitch_2f
    const-string v0, "color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    invoke-static {}, Lcom/gmail/heagoo/builder/f;->ColorPrimary()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 9
    :sswitch_3c
    const-string v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-static {}, Lcom/gmail/heagoo/builder/f;->VersionName()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 9
    :sswitch_49
    const-string v0, "colorAc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    invoke-static {}, Lcom/gmail/heagoo/builder/f;->colorAccent()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 9
    :sswitch_56
    const-string v0, "colorPr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    invoke-static {}, Lcom/gmail/heagoo/builder/f;->ColorPrimaryDark()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 9
    nop

    :sswitch_data_64
    .sparse-switch
        -0x40046286 -> :sswitch_8
        -0x34818e6f -> :sswitch_15
        0x2eaded -> :sswitch_22
        0x5a72f63 -> :sswitch_2f
        0x14f51cd8 -> :sswitch_3c
        0x3898eae5 -> :sswitch_49
        0x3898ecc5 -> :sswitch_56
    .end sparse-switch
.end method
