.class public Lorg/jf/dexlib2/builder/debug/BuilderEpilogueBegin;
.super Lorg/jf/dexlib2/builder/BuilderDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/EpilogueBegin;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/BuilderDebugItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugItemType()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method
